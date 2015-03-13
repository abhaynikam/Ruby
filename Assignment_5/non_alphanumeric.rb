puts "Enter a Stirng to check string has non-alphanumeric character:"
str = gets.chomp.to_s
if !(matches = str.scan(/[^\s+|^\d+|^\w+]/)).empty?
	puts "Has non-alphanumeric character\n"
else
	puts "Doesn't have non-alphanumeric character\n"
end