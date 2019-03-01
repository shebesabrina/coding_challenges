require 'pry'
words = ["the", "clock", "struck", "twelve", "."]

def sentence_structure(words, sentence = "")
  if words.empty?
    return sentence
  else
    word = words.shift
    updated_sentence = sentence + word + " "
    sentence_structure(words, updated_sentence)
  end


  # sentence = []
  # words.each do |word|
  #   sentence.append(word)
  # end
  # sentence = ""
  # words.each do |word|
  #   sentence = sentence + word + " "
  # end
  # sentence = []
  # words.each do |word|
  #   sentence << word
  # end
  # sentence.join(" ")
end

p sentence_structure(words)
