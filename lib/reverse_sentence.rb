# A method to reverse the words in a sentence, in place.
# Time complexity: 0(n)
# Space complexity: 0(1)
def reverse_sentence(my_sentence)
  if my_sentence == nil
    return nil
  end

  reverse_words(my_sentence)
  reverse(my_sentence, 0, my_sentence.length - 1)
end

def reverse_words(my_words)
  if my_words == nil
    return nil
  end

  first_letter_of_word = 0
  last_letter_of_word = 0
  counter = 0

  until counter > my_words.length
    if my_words[counter] != " " && my_words[counter] != nil
      counter += 1
    else
      last_letter_of_word = counter - 1
      counter += 1
      reverse(my_words, first_letter_of_word, last_letter_of_word)
      first_letter_of_word = counter
      last_letter_of_word = counter
    end
  end
end

def reverse(my_words, first_letter_of_word, last_letter_of_word)
  while first_letter_of_word < last_letter_of_word
    last_letter = my_words[first_letter_of_word]
    my_words[first_letter_of_word] = my_words[last_letter_of_word]
    my_words[last_letter_of_word] = last_letter
    first_letter_of_word += 1
    last_letter_of_word -= 1
  end
end
