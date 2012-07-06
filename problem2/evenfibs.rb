# By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms. #
# Every third term in the Fibonacci sequence is even #
startTime = Time.now
a = 1
b = 2
total = 2
while b < 4000000 do
  3.times do
    b = a + b
    a = b - a
  end  
  if (b < 4000000) then total += b end
end
puts "Total: #{total}"
puts (Time.now - startTime)

# I noticed that every third number in the Fibonacci sequence (starting at index 0) was even.
# Thus, the 3.times - the sequence is stepped through three times, and then the number is added unless the boundary was crossed.
# I did an extra arithmetic operation to avoid using a temporary variable.