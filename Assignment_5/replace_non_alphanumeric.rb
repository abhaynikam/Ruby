puts "Enter a Stirng to replace non-alphanumeric character with -:"
str = gets.chomp.to_s

if !(matches = str.scan(/[^\s+|^\d+|^\w+]/i)).empty?
	puts str.gsub(/[^\s+|^\d+|^\w+]/i,"-")
else
	puts "String doesn't have non-alphanumeric character\n"
end