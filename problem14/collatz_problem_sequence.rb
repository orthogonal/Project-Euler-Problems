# The following iterative sequence is defined for the set of positive integers:
# n -> n/2    (n is even)
# n -> 3n + 1 (n is odd)
# Which starting number, under one million, produces the longest chain ending in 1?

startTime = Time.now
largest = 0
largest_length = 0
results = []
for i in 1...1000000
  length = 1
  n = i
  catch (:alreadydone) do
    while (n != 1) do
      if (n % 2 == 0)
        n /= 2 
      else
        n = 3 * n + 1
      end
      if (n != 1 && results[n])
        length += results[n]
        throw :alreadydone
      else
        length += 1
      end
    end
  end
  if (length > largest_length) 
    largest = i 
    largest_length = length
  end
  results[i] = length
end
puts("#{largest}")
puts("#{Time.now - startTime}")

# The main thing here that isn't brute-force is that I'm keeping an array of the previous results.
# As soon as it reaches the start of a previously-solved sequence, it stops and just adds the result from that sequence.
