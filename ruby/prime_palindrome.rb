MAX = 1000

# get prime numbers till MAX
primes = (0..MAX).select { |a| a.to_s == a.to_s.reverse }
# get palindromes from prime numbers
primes.select { |p| ((2..MAX).to_a-[p]).none?{ |n| p % n == 0 } }
