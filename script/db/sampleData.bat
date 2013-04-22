student = Student.create(student_no:"d1234")

student.contact = Contact.create(first_name:"John",last_name:"Dow",middle_name:"Jr.",birthday:"01/01/2000",gender:"M",email:"jowdow@kumon.com",home_phone:"303-123-1222")

acct.addresses.create(address1:"abc main stree",state:"PA",city:"KOP",zip:"19304",type:"home")
acct.students.create(student_no:"d1234") 
acct.students.first.contact.create(first_name:"John",last_name:"Dow",middle_name:"Jr.",birthday:"01/01/2000",gender:"M",email:"jowdow@kumon.com",home_phone:"303-123-1222")
student.contact.create(first_name:"John",last_name:"Dow",middle_name:"Jr.",birthday:"01/01/2000",gender:"M",email:"jowdow@kumon.com",home_phone:"303-123-1222")

acct.students.select{ |s| s.contact.state=="PA"}
acct.students.where(s.contact.state=="PA")
acct.guardian = Guardian.create()
acct.guardian.contact = Contact.create(first_name:"John",last_name:"Dow",birthday:"01/01/1980",gender:"M",email:"jowdow@kumon.com",home_phone:"303-123-1222")