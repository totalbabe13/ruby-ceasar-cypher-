def caesar_cipher(phrase,num)
  puts '- - - - - - - '
  puts '- - Original Phrase - -'
  print phrase
  original_phrase_array = phrase.split('')
  print original_phrase_array
  puts ''
  puts ''
  puts '- - - - - - - '


  downcased_phrase = phrase.downcase
  alphabet = ("a".."z").to_a
  numbers = (1..26).to_a
  
  #convert phrase to array
  phrase_array = downcased_phrase.split('')
  puts '- - Phrase Array - -'
  print phrase_array
  puts ''
  puts '- - - - - - - '
 
  #convert phrase_array to numbers 
  number_code = []
  x = 0
  while x != phrase_array.length
    if alphabet.index(phrase_array[x])
      number_code << alphabet.index(phrase_array[x]) + num
      x += 1
    else
      number_code << phrase_array[x]
      x += 1
    end   
  end
  puts ' '
  puts ' - - Number Code - -'
  print number_code
  puts ''
  puts '- - - - - - - '

  #use numbers with cypher to find new letter index 
  find_new_letter_index = []
  number_code.map do |item| 
    if item.is_a?(Integer)
      find_new_letter_index << item + num
    else
      find_new_letter_index << item   
    end  
  end
  
  puts ' '
  puts ' - - Cypher Code - -'
  print find_new_letter_index
  puts ''
  puts '- - - - - - - '

  # match new letter index with letters
  secret_message_array = []
  find_new_letter_index.each do |item|
     if item.is_a?(Integer)
       secret_message_array << alphabet[item-1]
     else
       secret_message_array << item
     end     
   end
  
  puts ' '
  puts ' - - Coded Phrase - -'
  print secret_message_array
  puts ''
  puts '- - - - - - - '
  # match uppercase letters
  uppercased_array = []
  
  original_phrase_array.each do |letter|
    if letter == letter.upcase
      k = original_phrase_array.index(letter)
      secret_message_array[k] = secret_message_array[k].upcase
    else
      letter  
    end
  end

  puts ' '
  puts ' - - Coded Uppercased Phrase - -'
  print secret_message_array
  puts ''
  puts '- - - - - - - '

  puts '- - Coded Message - - ' 
  print "-->  " + secret_message_array.join
end

caesar_cipher('AbcefG HijklmnoP!', 1)