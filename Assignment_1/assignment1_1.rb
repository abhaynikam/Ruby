

def calculate(a,b,operator)
    a.send(operator, b)
end

puts "variable1 : "
var1 = gets.chomp.to_i

puts "variable2 : "
var2 = gets.chomp.to_i

puts "operator : "
operator = gets.chomp

puts calculate(var1,var2,operator)
