# Implement a caesar cipher that takes in a string and the shift factor and then outputs the modified string:

#   > caesar_cipher("What a string!", 5)
#   => "Bmfy f xywnsl!"
# Quick Tips:

# You will need to remember how to convert a string into a number.
# Don’t forget to wrap from z to a.
# Don’t forget to keep the same case.

def caesar_cipher(phrase,num)
  alphabet = ("a".."z").to_a
  numbers = (1..26).to_a
  
  #convert phrase to array
  phrase_array = phrase.split('')
 
  #convert phrase_array to numbers 
  number_code = []
  x = 0
  while x != phrase_array.length
    number_code << alphabet.index(phrase_array[x]) + num
    x += 1
  end

  #use numbers with cypher to find new letter index
  find_new_letter_index =  number_code.each {|item| item + num }

  # match ne letter index with letters
  secret_message_array = []
  find_new_letter_index.each do |item|
     secret_message_array << alphabet[item] 
   end

   puts secret_message_array.join
end

caesar_cipher('hello', 3)