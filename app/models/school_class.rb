class SchoolClass < ActiveRecord::Base
  attr_accessible :end_date, :grade, :start_date, :subject
end
