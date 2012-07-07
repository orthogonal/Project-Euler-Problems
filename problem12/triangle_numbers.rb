# What is the value of the first triangle number to have over five hundred divisors? #
include Math
i = 1
triangle = 1
divisors = []
while(divisors.length < 500) do
  divisors = []
  i += 1
  triangle += i
  sqrt = Math.sqrt(triangle)
  n = 1
  while (n <= sqrt) do
    if (triangle % n == 0)
      divisors[n] = true
      divisors[triangle / n] = true
    end
    n += 1
  end  
  divisors.compact!
  puts("#{triangle}, #{divisors.length}")
end
  