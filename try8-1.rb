def englishNumber number #555
  if number < 0  # No negative numbers.
    return 'Please enter a number that isn\'t negative.'
  end
  if number == 0
    return 'zero'
  end

  # No more special cases! No more returns!

  numString = ''  # This is the string we will return.

  onesPlace = ['one',     'two',       'three',    'four',     'five',
               'six',     'seven',     'eight',    'nine']
  tensPlace = ['ten',     'twenty',    'thirty',   'forty',    'fifty',
               'sixty',   'seventy',   'eighty',   'ninety']
  teenagers = ['eleven',  'twelve',    'thirteen', 'fourteen', 'fifteen',
               'sixteen', 'seventeen', 'eighteen', 'nineteen']

  # "left" is how much of the number we still have left to write out.
  # "write" is the part we are writing out right now.
  # write and left... get it?  :)

  left = number  #millions 1204876
  write = number/1000000 #1
  left = left - write * 1000000 #1204876 - 1000000 = 204876

  if write > 0
    millions = englishNumber write #1
    numString = numString + millions + " million" # One Million
    if left > 0
      numString = numString + " " #one million +""
      
    end
    
  end

  write = left/1000 #204876 / 1000 = 204
  left = left - write * 1000 #204876 - 204000 = 876

  if write > 0
    thousands = englishNumber write #2 hundred four
    numString = numString + thousands + " thousand" # "one million two hundred four + thousand"

    if left > 0
      numString = numString + " "# "one million two hundred four + thousand "
    end
  end



  # left  = number We inhereit this number from the previous block. 
  write = left/100          # How many hundreds left to write out? *write = 555/100 *= 5 
  left  = left - write*100  # Subtract off those hundreds. left = 555 - 5*100 *= 55 

  if write > 0
    # Now here's a really sly trick:
    hundreds  = englishNumber write #hundreds =
    numString = numString + hundreds + ' hundred'
    # That's called "recursion". So what did I just do?
    # I told this method to call itself, but with "write" instead of
    # "number". Remember that "write" is (at the moment) the number of
    # hundreds we have to write out. After we add "hundreds" to
    # "numString", we add the string ' hundred' after it.
    # So, for example, if we originally called englishNumber with
    # 1999 (so "number" = 1999), then at this point "write" would
    # be 19, and "left" would be 99. The laziest thing to do at this
    # point is to have englishNumber write out the 'nineteen' for us,
    # then we write out ' hundred', and then the rest of
    # englishNumber writes out 'ninety-nine'.

    if left > 0
      # So we don't write 'two hundredfifty-one'...
      numString = numString + ' ' #only executes if write is greater than 0.
    end
  end

  write = left/10          # How many tens left to write out?
  left  = left - write*10  # Subtract off those tens.

  if write > 0
    if ((write == 1) and (left > 0))
      # Since we can't write "tenty-two" instead of "twelve",
      # we have to make a special exception for these.
      numString = numString + teenagers[left-1]
      # The "-1" is because teenagers[3] is 'fourteen', not 'thirteen'.

      # Since we took care of the digit in the ones place already,
      # we have nothing left to write.
      left = 0
    else
      numString = numString + tensPlace[write-1]
      # The "-1" is because tensPlace[3] is 'forty', not 'thirty'.
    end

    if left > 0
      # So we don't write 'sixtyfour'...
      numString = numString + '-'
    end
  end

  write = left  # How many ones left to write out?
  left  = 0     # Subtract off those ones.

  if write > 0
    numString = numString + onesPlace[write-1]
    # The "-1" is because onesPlace[3] is 'four', not 'three'.
  end

  # Now we just return "numString"...
  numString
end

puts englishNumber( 99)

digit = 9999

while digit > 0
  current_bottles = englishNumber(digit)
  future_bottles = englishNumber(digit - 1)

  puts "#{current_bottles} bottles of beer on the wall, #{current_bottles} bottles of beer. Take one down >> pass it around #{future_bottles} bottles of beer on the wall."

  digit = digit - 1
end









