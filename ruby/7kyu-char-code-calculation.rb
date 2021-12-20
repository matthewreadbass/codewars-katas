#Given a string, turn each character into its ASCII character code and join them together to create a number - let's call this number total1:

#'ABC' --> 'A' = 65, 'B' = 66, 'C' = 67 --> 656667
#Then replace any incidence of the number 7 with the number 1, and call this number 'total2':

#total1 = 656667
#              ^
#total2 = 656661
#              ^
#Then return the difference between the sum of the digits in total1 and total2:

#  (6 + 5 + 6 + 6 + 6 + 7)
#- (6 + 5 + 6 + 6 + 6 + 1)
#-------------------------
#                       6

def calc(s)
  total1 = []
  s.each_char { |char| total1 << char.ord }
  total1 = total1.join.split("")
  total1.map! { |n| n.to_i }
  total2 = total1.dup
  total2.map! { |num| (num == 7) ? num = 1 : num }
  (total1.inject(:+)) - (total2.inject(:+))
end