# What is the largest prime factor of the number 600851475143 ? #
startTime = Time.now
include Math
low_factors = []
high_factors = []
number = 600851475143
sqrt = Math.sqrt(number)

i = 2
while i <= sqrt do
  if number % i == 0
     low_factors.push(i)
     high_factors.push(number / i) 
  end
  i += 1
end

catch (:foundit) do
  if (low_factors.length == 0)
    puts "The number is prime!"
  else
    low_factors = low_factors.reverse
    high_factors.concat(low_factors)
    for n in high_factors do
      catch (:continue) do
        sqrt = Math.sqrt(n)
        i = 2
        while i <= sqrt do
          if (n % i == 0)
            throw :continue
          end
          i += 1
        end
        puts "The largest prime factor is #{n}"
        throw :foundit
      end
    end
  end
end
puts (Time.now - startTime)
  
# I made two sets of factors - the high ones and the low ones.  This made it easy to sort the factors in reverse order, so that
# as soon as I found one that was prime, I would know it was the largest prime factor.  The throw-catch structure in the second
# part of the code is so that I could do outer continuing and breaking.  Note that both of the sets of factors are combined into
# high_factors for the second part.
