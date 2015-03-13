puts "Enter a Stirng to replace MRS to MR:"
str = gets.chomp.to_s

if !(matches = str.scan(/Mrs/i)).empty?
	puts str.gsub(/Mrs/i,"Mr")
else
	puts "Doesn't have MRS character\n"
end
