def solution(number)
    output = []
    (1...number).to_a.each { |num| output << num if num % 3 == 0 || num % 5 == 0 }
    output.inject(:+)
  end