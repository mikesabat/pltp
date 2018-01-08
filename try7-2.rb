#arr.insert(3, 'apple')  #=> [0, 1, 2, 'apple', 3, 4, 5, 6]

words = []
new_word = 1

# puts "Enter a word >>>"
# new_word = gets.chomp.downcase

while new_word != ""

	puts "Enter a word >>>"
	new_word = gets.chomp.downcase

	last_word = words.length - 1

		while words[last_word].to_s > new_word.to_s
			last_word = last_word - 1
		end
		

	words.insert(last_word + 1, new_word)

	puts words.to_s 			
end

puts words.to_s



	# while (words[word_order].to_s < new_word) and (words[word_order+1].to_s < new_word)
		# 	puts "OKOKOKOK"
		# 	word_order = word_order + 1

		# 	puts "word order #{word_order.to_s}"

		# while words[word_order].to_s < new_word
		# 	word_order = word_order + 1		
		# else
		# 	words.insert(word_order, new_word)
		# 	puts words.to_s #just to check	