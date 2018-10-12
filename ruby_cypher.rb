def caesar_cipher(phrase,num)
  original_phrase_array = phrase.split('')
  downcased_phrase = phrase.downcase
  alphabet = ("a".."z").to_a
  numbers = (1..26).to_a
  
  #convert phrase to array
  phrase_array = downcased_phrase.split('')

  #convert phrase_array to numbers 
  number_code = []
  x = 0
  while x != phrase_array.length
    if alphabet.index(phrase_array[x])
      number_code << (alphabet.index(phrase_array[x])) + 1 
      x += 1
    else
      number_code << phrase_array[x]
      x += 1
    end   
  end
  
  #use numbers with cypher to find new letter index 
  find_new_letter_index = []
  number_code.map do |item| 
    if item.is_a?(Integer)
      find_new_letter_index << item + num
    else
      find_new_letter_index << item   
    end  
  end

  # match new letter index with letters
  secret_message_array = []
  find_new_letter_index.each do |item|
     if item.is_a?(Integer)
       if item > 26
         item = item - 26
       end   
       secret_message_array << alphabet[item-1]
     else
       secret_message_array << item
     end     
   end
 
  uppercased_array = []
  original_phrase_array.each do |letter|
    if letter == letter.upcase
      k = original_phrase_array.index(letter)
      secret_message_array[k] = secret_message_array[k].upcase
    else
      letter  
    end
  end
  puts '- - Coded Message - - ' 
  print "-->  " + secret_message_array.join
end

caesar_cipher('Abcde Vwxyz!', 2)