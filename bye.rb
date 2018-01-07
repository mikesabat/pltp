# puts "It's gramma, talk to me."
say = "" #We need to define say before while, or else while is running on an undefined variable. So maybe the say == nil doesn't matter bc it can't be nil
consecutive_buys = 0

while (consecutive_buys <= 2 )
	
	say = gets.chomp

	if say == "BYE"
		consecutive_buys = consecutive_buys + 1

	elsif say == say.upcase
		year = rand(1937..1950)
		puts "Not since #{year}"
		consecutive_buys = 0

	else
		puts "I can't hear you!!! talk louder"
		consecutive_buys = 0
	end	
puts "It's gramma, talk to me."

end

puts "OK, we're done!"
