puts "Enter a Stirng to check WHITE SPACES:"
str = gets.chomp.to_s
if !(matches = str.scan(/\s/)).empty?
	puts "whitespace FOUND!!"
else
	puts "whitespaces NOT-FOUND!!"
end