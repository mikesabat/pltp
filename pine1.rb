puts "First, reply with your first name??"
first_name = gets.chomp

puts "Ok great, your first name is #{first_name}, but we need more than that. Now, reply with your middle name!"
middle_name = gets.chomp

puts "Alright, we have your first name, #{first_name}, and your middle name, #{middle_name}, but we still need your last name. Can you reply with that now!!"
last_name = gets.chomp

puts "Finally, your full name is #{first_name} #{middle_name} #{last_name}"