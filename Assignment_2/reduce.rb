print "Enter a line:"
str1 = gets
str2 = str1.split("")
print str1
while not str2.length == 1
	str2.delete_at(1)
	for i in 1...str2.length
		str2.delete_at(i+1)
	end
	str3 = str2.join
	puts str3
end