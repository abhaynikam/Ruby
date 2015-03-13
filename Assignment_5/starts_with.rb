puts "Enter a Stirng to check start_with St:"
str = gets.chomp.to_s

if !(matches = str.scan(/^St/i)).empty?
	puts "String starts with : St\n"
else
	puts "String doesn't ends with art\n"
end