# Given an array of digital numbers, return a new array of length number containing the last even numbers from the original array (in the same order). The original array will be not empty and will contain at least "number" even numbers.

# For example:
# ([1, 2, 3, 4, 5, 6, 7, 8, 9], 3) => [4, 6, 8]
# ([-22, 5, 3, 11, 26, -6, -7, -8, -9, -8, 26], 2) => [-8, 26]
# ([6, -25, 3, 7, 5, 5, 7, -3, 23], 1) => [6]

def even_numbers(arr,n)
  evens = []
  arr.each { |num| evens << num if num.even? }
  output = evens.last(n)
end