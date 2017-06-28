# code here!
require "pry"
class School

	def initialize(name)
		@name = name
		@roster = {}
	end

	def roster
		@roster
	end

	def add_student(student, grade)
		if @roster[grade] == nil
			@roster[grade] = [student]
		else
			@roster[grade] << student
		end
	end

	def grade(num)
		@roster[num]
	end

	def sort
		@roster.each do |grade, students|
			#binding.pry
			@roster[grade] = students.sort

		end
	end
end
