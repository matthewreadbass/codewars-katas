#Return a list of all words that are longer than n.

def filter_long_words(sentence, n)
  arr = sentence.split(" ")
  output = []
  arr.each { |word| output << word if word.length > n }
  output
end