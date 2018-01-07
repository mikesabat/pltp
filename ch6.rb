puts "Tell me a starting year"
puts ">>>"
start_year = gets.chomp

puts "starting year is #{start_year}. Give an ending year."
puts ">>>"
end_year = gets.chomp

leap_years = 0

while (start_year.to_i <= end_year.to_i)
	
	if ((start_year.to_i%4 == 0) and (start_year.to_i%100 != 0)) or (start_year.to_i%400 == 0)
		puts "found a leap year >> #{start_year}"
		leap_years = leap_years + 1	
	end

	start_year = start_year.to_i + 1
end

puts "The total leap years in this range is #{leap_years}"
