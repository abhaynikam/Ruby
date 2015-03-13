puts "Enter a Stirng to check ends-with art:"
str = gets.chomp.to_s

if !(matches = str.scan(/art$/i)).empty?
	puts "String ends with : art\n"
else
	puts "String doesn't ends with art\n"
end