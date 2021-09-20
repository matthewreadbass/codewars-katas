# In this Kata, you will be given a string that may have mixed uppercase and lowercase letters and your 
# task is to convert that string to either lowercase only or uppercase only based on:
# make as few changes as possible.
# if the string contains equal number of uppercase and lowercase letters, convert the string to lowercase.


def solve s
  upper, lower = 0, 0
  s.each_char { |num| ("A".."Z").include?(num) ? upper += 1 : lower += 1 }
  output = upper <=> lower
  output <= 0 ? s.downcase : s.upcase
end

p solve("CHEese")