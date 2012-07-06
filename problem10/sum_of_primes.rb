# Find the sum of all the primes below two million. #
startTime = Time.now
include Math
limit = 2000000
numbers = []
i = 0
while (i <= limit) do
  numbers.push(i)
  i += 1
end

sqrt = Math.sqrt(limit)
i = 2
while (i <= sqrt) do
  j = 2 * i
  while (j <= limit)
    numbers[j] = nil
    j += i
  end
  i += 1
end
numbers.compact!

total = -1
for n in numbers do
  total += n
end
puts ("The total is #{total}")
puts ("#{Time.now - startTime}")

# I reused the code from the 10,0001st prime problem to build a Sieve of Eratosthenes that finds all the primes less than 2,000,000.
# The total starts at -1 because, as in that problem, -1 is not taken out of the array.  