# There exists exactly one Pythagorean triplet for which a + b + c = 1000.  Find the product abc.  #

startTime = Time.now
include Math
a = 1
b = 1
while ((a * (2000 - b) + b * (2000 - a)) != 1000000) do
  a += 1
  b = 1
  while ((a * (2000 - b) + b * (2000 - a)) < 1000000) do
    b += 1
  end
end
c = Math.sqrt(a**2 + b**2)
puts("a = #{a}\nb = #{b}\nc = #{c}\nabc = #{a * b * c}\n ")
puts (Time.now - startTime)

# a + b + c = 1000
# a^2 + b^2 = c^2
# c = sqrt(a^2 + b^2)
# a + b + sqrt(a^2 + b^2) = 1000
# a^2 + b^2 = (1000 - a - b)(1000 - a - b)
# simplification...
# 10^6 = 2ab + 2000a + 2000b
# a(2000 + b) + b(2000 + a) = 10^6
# 
# Check b until it won't work any more, and then keep incrementing a.  
# I hit a snag in the middle of this because I had the while loop condition set to <= instead of <