puts "Enter a Stirng to find third word:"
str = gets.chomp.to_s

if !(matches = str.scan(/^(\w+\s+)(\w+\s+)(\w+\s+)/i)).empty?
	puts $3
else
	puts "String doesn't have third word\n"
end


