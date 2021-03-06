# Count the number of divisors of a non-negative integer n.
# Random tests go up to n = 500000.

# Examples
# divisors(4)  -> 3 # 1, 2, 4
# divisors(5)  -> 2 # 1, 5
# divisors(12) -> 6 # 1, 2, 3, 4, 6, 12
# divisors(30) -> 8 # 1, 2, 3, 5, 6, 10, 15, 30

def divisors(n)
  i = 1
  num = 1
  until i == n
    num += 1 if n % i == 0
    i += 1
  end
  num
end