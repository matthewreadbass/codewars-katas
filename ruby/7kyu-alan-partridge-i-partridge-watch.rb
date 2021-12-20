#To celebrate today's launch of my Hero's new book: Alan Partridge: Nomad, We have a new series of kata arranged around the great man himself.
#Given an array of terms, if any of those terms relate to Alan Partridge, return Mine's a Pint!
#The number of ! after the t should be determined by the number of Alan related terms you find in the provided array (x). The related terms are:

#Partridge
#PearTree
#Chat
#Dan
#Toblerone
#Lynn
#AlphaPapa
#Nomad

#If you don't find any related terms, return 'Lynn, I've pierced my foot on a spike!!'
#All Hail King Partridge

def part(arr)
  i = 0
  excl = []
  terms = ["Partridge", "PearTree", "Chat", "Dan", "Toblerone", "Lynn", "AlphaPapa", "Nomad"]
  arr.each { | word | i+=1 if terms.include?(word) }
  i.times { excl << "!" }
  excl = excl.join
  i == 0 ? "Lynn, I've pierced my foot on a spike!!" : "Mine's a Pint#{excl}"
end