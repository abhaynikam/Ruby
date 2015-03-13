str = "Mississippi"
pattern = "ss"
unless (matches = str.scan(pattern)).empty?
	puts "FOUND ss!!"
end