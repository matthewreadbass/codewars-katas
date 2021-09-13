#Write a program to determine if a string contains only unique characters. Return true if it does and false otherwise.
#The string may contain any of the 128 ASCII characters. Characters are case-sensitive, e.g. 'a' and 'A' are considered different characters.

def unique_chars?(str)
  str_arr = []
  str.each_char { |char| str_arr << char if !str_arr.include?(char) }
  str_arr.size == str.length ? true : false
end