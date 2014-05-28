#Playing around with ruby!

print "Please enter a number: "
first_number = gets.chomp

print "Please enter a second number: "
second_number = gets.chomp

if first_number > second_number
	puts "The value of your first number is greater than the value of your second number."

elsif first_number < second_number
	puts "The value of your first number is less than the value of your second number."

else
	puts "You entered the same number twice, you big dork. "

end
