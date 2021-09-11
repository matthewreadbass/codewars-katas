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