
words = []
new_word = 1

while new_word != ""

	puts "Enter a word >>>"
	new_word = gets.chomp.downcase

	last_word = words.length - 1
	puts "new word #{new_word} being compared to position #{last_word}, #{words[last_word]}"	
	
		while (words[last_word].to_s > new_word.to_s) and (last_word != 0) #runs if the new word comes before the last word
			puts "new word #{new_word} comes before #{words[last_word]} at position #{last_word},"
			last_word = (last_word - 1) #make absolute? exit.abs 
			puts "So we are moving to the new position in the array spot #{last_word} and comparing #{new_word} to #{words[last_word]}"
			puts
		end

	if (last_word == 0) and (words[last_word].to_s > new_word.to_s)
		puts "This should be the first word"
		insert_spot = 0
	else
		insert_spot = last_word + 1
	end
	puts "Let's insert new word in the array spot #{insert_spot}"
	words.insert(insert_spot, new_word)

	puts words.to_s 			
end

puts words.to_s

#if it comes before position [0] then make it position [0]
