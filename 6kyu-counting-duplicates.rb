def duplicate_count(text)
    count = Hash.new(0)
    arr = text.downcase.chars.sort.each { |char| count[char] += 1 }
    dupes = count.select { |k,v| v >= 2 }.size
  end