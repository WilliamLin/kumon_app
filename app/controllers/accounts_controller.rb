class AccountsController < ApplicationController
  before_filter :signed_in_account, only: [:index, :edit, :update, :destroy,:followers,:following]
  before_filter :correct_account,   only: [:edit, :update]
  before_filter :admin_account,     only: :destroy


  # GET /accounts
  # GET /accounts.json
  def index
     @accounts = Account.paginate(page: params[:page])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @accounts }
    end
  end

  # GET /accounts/1
  # GET /accounts/1.json
  def show
    @account = Account.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @account }
    end
  end

  # GET /accounts/new
  # GET /accounts/new.json
  def new
    @account = Account.new
    @account.build_address
    student = @account.students.build()
    student.build_contact
    guardian = guardian = @account.build_guardian
    guardian.build_contact

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @account }
    end
  end

  # GET /accounts/1/edit
  def edit
    @account = Account.find(params[:id])
  end

  # POST /accounts
  # POST /accounts.json
  def create
    @account = Account.new(params[:account])
   if @account.save
      sign_in @account
      flash[:success] = "Welcome to the Kumon Online!"
      redirect_to @account
    else
      render 'new'
    end

  end

  # PUT /accounts/1
  # PUT /accounts/1.json
  def update
    @account = Account.find(params[:id])  
    if @account.update_attributes!(params[:account])
      flash[:success] = "Profile updated"
      sign_in @account
      redirect_to @account
    else
      render 'edit'
    end
  end

  # DELETE /accounts/1
  # DELETE /accounts/1.json
  def destroy
    @account = Account.find(params[:id])
    @account.destroy

    respond_to do |format|
      format.html { redirect_to accounts_url }
      format.json { head :no_content }
    end
  end

  private

    def correct_account
        @account = Account.find(params[:id])
        redirect_to(root_path) unless current_account?(@account)
    end

    def admin_account
      redirect_to(root_path) unless current_account.admin?
    end

end
