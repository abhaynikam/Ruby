PI = 3.1415927

def calculate_radius(r)
	PI*r*r 
end

print "Enter the Radius of cirlce:"
radius = gets.chomp.to_f

print "Area is:"
puts calculate_radius(radius)