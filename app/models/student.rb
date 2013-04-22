class Student < AccountContact 
	attr_accessible :grade, :school_year_end, :school_year_start, :transfer_student, :student_no
	
	#has_many :Enrollments
	#has_many :SchoolClasses, :through => Enrollments 

	#def initialize(attributes = {})
    #	@type = "Student"
  	#end
end	