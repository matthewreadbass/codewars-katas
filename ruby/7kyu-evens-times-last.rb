# Given a sequence of integers, return the sum of all the integers that have an even index, multiplied by the integer at the last index.
# Indices in sequence start from 0.
# If the sequence is empty, you should return 0.

def even_last(numbers)
  return 0 if numbers.empty?
  evens = []
  numbers.each_with_index { |num, ind| evens << num if ind.even? }
  evens.inject(:+) * numbers[-1]
end