#So you've found a meeting room - phew! You arrive there ready to present, and find that someone has taken one or more of the chairs!! You need to find some quick.... check all the other meeting rooms to see if all of the chairs are in use.
#Your meeting room can take up to 8 chairs. need will tell you how many have been taken. You need to find that many.
#Find the spare chairs from the array of meeting rooms. Each meeting room tuple will have the number of occupants as a string. Each occupant is represented by 'X'. The room tuple will also have an integer telling you how many chairs there are in the room.
#You should return an array of integers that shows how many chairs you take from each room in order, up until you have the required amount.

#Example:
#[['XXX', 3], ['XXXXX', 6], ['XXXXXX', 9], ['XXX',2]] when you need 4 chairs:
#result -> [0, 1, 3] no chairs free in room 0, take 1 from room 1, take 3 from room 2. no need to consider room 3 as you have your 4 chairs already.
#If you need no chairs, return "Game On". If there aren't enough spare chairs available, return "Not enough!".

def meeting(rooms, need)
    i = 0
    chairs = 0
    arr = []
    return "Game On" if need == 0
    until chairs > need
      rooms.each do |r|
        i += r[0].length
        chairs += r[1]
        r[1] - r[0].length >= 0 ? arr << r[1] - r[0].length : arr << 0
      end
      return "Not enough!" if need > arr.inject(:+)
      arr.pop until arr[-1] != 0
      until arr.inject(:+) == need
        arr[-1] = arr[-1] -1 if arr[-1] >= 1
        arr.pop until arr[-1] != 0
      end
    end
    return arr
  end