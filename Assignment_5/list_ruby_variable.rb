def list_ruby_variable(pattern,file)
	count = 0
	file.pos = 0
	file.each do |row|
		unless (matches = row.scan(pattern)).empty?
			puts matches
			count = count+1
		end	
	end
	puts "Instance Variable Count:#{count}"
end

puts "Enter the file path:"
path = gets.chomp.to_s
if(File.file?(path) == true)
	file = File.open(path,"r")
else
	puts "File does not exist!!\n"
	return;
end

puts "Class Variables:"
list_ruby_variable(/@@\w+/,file)

puts "Instance Variables:"
list_ruby_variable(/@\w+/,file)

puts "Golbal Variables:"
list_ruby_variable(/\$\w+/,file)