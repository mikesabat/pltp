def ask question
	good_answer = false
	while good_answer == false
		puts question
		puts "please respond yes or no."
		response = gets.chomp.downcase
		if response == "yes" or response == "no"
			good_answer = true
		else
			puts "We need you to answer yes or no."

		end
		
	end
response 
end

puts 'Hello, and thank you for...'
puts

ask 'Do you like eating tacos?'      # We ignore this return value.
ask 'Do you like eating burritos?'

wets_bed = ask "Do you wet the bed?"

ask 'Do you like eating chimichangas?'
ask 'Do you like eating sopapillas?'
ask 'Do you like eating tamales?'
puts 'Just a few more questions...'
ask 'Do you like drinking horchata?'
ask 'Do you like eating flautas?'

puts
puts 'DEBRIEFING:'
puts 'Thank you for...'
puts
puts "OK below is the answer to the bedwetting question."
puts wets_bed