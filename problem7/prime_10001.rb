# Find the 10,001st prime #
include Math
limit = 200000
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
puts "There are #{numbers.length} primes <= #{limit}, and the 10,0001st one is #{(numbers[10002] ? numbers[10002] : "non-existant")}"
    
# The key here is using the Ruby .compact! method, which compresses an array by removing all nil elements.  Then I use the sieve
# of Eratosthenes, changing all the composite elements to nil.  The array is indexed so that numbers[1] = 1, etc.  At the end of
# the problem, numbers[1] is still 1, but 1 is not the first prime - 2 is.  That's why numbers[10002] is the 10001st prime.