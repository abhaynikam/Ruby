#mixin that will perform arithmetic calculations to calculate the score and interest
module Calculate

	def calculateScore(marks1,marks2,marks3)
		@score = marks1+marks2+marks3;
	end

	def calculateInterest(principal,rate,time)
		@simpleInterest = (principal*rate*time)/100;
	end
end

#Interest class calculates the simple interest of a user
class Interest
	include Calculate

	def set
		puts "Enter Principal:"
		@principal = gets.chomp.to_i

		puts "Enter Rate:"
		@rate = gets.chomp.to_i

		puts "Enter Time:"
		@time = gets.chomp.to_i
	end

	def display
		puts "Principal:#{@principal}"
		puts "Rate:#{@rate}"
		puts "Time:#{@time}"
	end

	def principal
		@principal
	end

	def rate
		@rate
	end

	def time
		@time
	end

	obj1 = Interest.new
	obj1.set
	obj1.display

	print "Simple Interest:"

	puts obj1.calculateInterest(obj1.principal,obj1.rate,obj1.time)
	
end

#Score class calculates the percentage of the student.
class Score
	include Calculate
	def setMarks
		puts "Enter Marks1:"
		@mark1 = gets.chomp.to_i

		puts "Enter Marks2:"
		@mark2 = gets.chomp.to_i

		puts "Enter marks3:"
		@mark3 = gets.chomp.to_i
	end

	def displayMarks
		puts "Marks of subject1: #{@mark1}"
		puts "Marks of subject2: #{@mark2}"
		puts "Marks of subject3: #{@mark3}"
	end

	def calculatePercentage(score)
		@perc = (score*100)/300
		puts @perc
	end

	def mark1
		@mark1
	end

	def mark2
		@mark2
	end

	def mark3
		@mark3
	end
	
	obj = Score.new
	obj.setMarks
	puts obj.displayMarks
	
	print "score:"
	puts @score = obj.calculateScore(obj.mark1,obj.mark2,obj.mark3)

	print "Percentage:"
	obj.calculatePercentage(@score)
end