#Question 4
class Person
	def initialize(name)
		@name = name
	end
#Question 5
	def greeting
		puts "Hi, my name is #{@name}"
	end
end

#Question 1
#Question 2
class Student < Person
	def learn
		puts "I get it!"
	end
end
#Question 3
class Instructor < Person
	def teach
		puts "Everything in Ruby is an Object."

	end
end
#Question 6
Chris = Instructor.new("Chris")
Chris.greeting

#Question 7
Christina = Student.new("Christina")
Christina.greeting

#Question 8 doesn't work because method is not assigned to that class