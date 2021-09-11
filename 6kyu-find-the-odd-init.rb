def find_it(seq)
    odds = []
    seq.each { |num| odds << num if seq.count(num).odd? }
    odds[0]
  end