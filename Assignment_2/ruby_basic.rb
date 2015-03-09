
def array_manipulation
	print "Array Manipulation\n\n"
	print "#{array = [1,2,3,4,5]}\n"

	print "PUSH: #{array.push(7)}\n"

	print "POP: #{array.pop}\n"

	print "MINIMUM: #{array.min}\n"

	print "MAXIMUM: #{array.max}\n"

	print "FIRST: #{array.first}\n"

	print "LAST: #{array.last}\n"

end

def string_manipulation
	print "\nString Manipulation\n\n"
	print "Enter String:"
	str = gets.chomp.to_s
	print "String is:#{str}\n"

	print "REVERSE: #{str.reverse}\n"
	print "EQUALS: #{str.eql?"hello, world"}\n"
	print "lENGTH: #{str.length}\n"
	print "UPPERCASE: #{str.upcase}\n"
	print "CAPITALIZE: #{str.capitalize}\n"
end

def hash_manipulation
	print "\nHash Manipulation\n\n"
	personal_info = {"name":"abhay","email":"abhay@weboniselab.com", "location":"Pune"}
	print "#{personal_info}\n"

	print "NAME:#{personal_info[:name]}\n"

	print "VALUE: #{personal_info.value?"abhay"}\n"

	print "KEYS: #{personal_info.keys}\n"

	print "SORT: #{personal_info.sort}\n"

	print "LENGTH: #{personal_info.length}\n"
end

array_manipulation
string_manipulation
hash_manipulation