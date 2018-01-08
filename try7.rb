# Let's write a program which asks us to type in as many words as we want (one word per line, continuing until we just press Enter on an empty line), and which then repeats the words back to us in alphabetical order. OK?

words = []

puts "Enter a word >>>"
add_in = gets.chomp

while add_in != ""
	words.push add_in
	puts words.to_s
	puts "Enter a word >>>"
	add_in = gets.chomp
end

puts words.sort.to_s