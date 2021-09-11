def generateHashtag(str)
    arr = str.split(" ").map { |word| word.capitalize}
    arr.join.size.between?(2, 139) ? "#{arr.join}" : false
  end