# Add all the natural numbers below one thousand that are multiples of 3 or 5. #
x = 1
total = 0
while x < 1000 do
  if ((x % 3 == 0) || (x % 5 == 0)) then total += x end
  x += 1
end
puts total

# Pretty simple program - just keeps a total and adds each number in sequence.