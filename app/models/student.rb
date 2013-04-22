class Student < AccountContact 
	attr_accessible :grade, :school_year_end, :school_year_start, :transfer_student, :student_no
	accepts_nested_attributes_for :contact
	#has_many :Enrollments
	#has_many :SchoolClasses, :through => Enrollments 

	#def initialize(attributes = {})
    #	@type = "Student"
  	#end
end	