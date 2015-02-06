MAX = 1000

# get prime numbers till MAX
palindromes = (0..MAX).select { |a| a.to_s == a.to_s.reverse }
# get palindromes from prime numbers
prime_palindromes = palindromes.select { |p| ((2..Math.sqrt(p)).to_a).none?{ |n| p % n == 0 } }

prime_palindromes.size.times { |i| puts "#{prime_palindromes.last(prime_palindromes.size-i).join(' ')} #{prime_palindromes.first(i).join(' ')}" }
