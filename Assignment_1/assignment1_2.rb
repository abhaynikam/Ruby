def compareString(var1,var2)
	if var1 == var2
		puts "EQUAL!"
	else
		puts "NOT EQUAL!"
	end
end

puts "string1 : "
str1 = gets.chomp

puts "string2 : "
str2 = gets.chomp

compareString(str1,str2)