# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20? #

x = 9699690
n = 1
catch (:foundit) do
  loop do
    candidate = x * n
    n += 1
    flag = false
    i = 1
    while (i <= 20 && !flag) do
      if (candidate % i != 0)
        flag = true
      end
      i += 1
    end
    if (!flag)
      puts "The smallest such number is: #{candidate}"
      throw :foundit
    end
  end
end

# The only thing clever here is that it has to involve all the primes.
# So it must be divisible by all of them, and therefore by 2 * 3 * 5 * 7 * 11 * 13 * 17 * 19 = 9699690    