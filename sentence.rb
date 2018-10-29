require 'pry'
words = ["the", "clock", "struck", "twelve", "."]

def sentence_structure(words)
  sentence = ""
  words.each do |word|
    # binding.pry
    sentence = sentence + word + " "
  end
  # sentence = []
  # words.each do |word|
  #   sentence << word
  # end
  sentence
end

p sentence_structure(words)
