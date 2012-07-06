# A palindromic number reads the same both ways.  Find the largest palindrome made from the product of two 3-digit numbers. #
startTime = Time.now
def check_palindrome(num)
  num = num.to_s
  i = 0
  j = num.length - 1
  while (j > i) do
    if num[i] != num[j]
      return false
    end
    i += 1
    j -= 1
  end
  return true
end

largest = 0
a = 101
while (a < 1000) do
  b = 101
  while (b < 1000) do
    num = a * b
    if (check_palindrome(num))
      if (num > largest) then largest = num end
    end
    b += 1
  end
  a += 1
end
puts "The largest palindrome is #{largest}"
puts (Time.now - startTime)

# This is the brute-force way of doing it, and fortunately for this problem it worked in about slightly over one second.  
# To check if a number is a palindrome, turn it into a string, and then compare each pair of characters against each other.
# Every single combination of numbers 100-999 is checked.  This is where efficiency could be improved - for instance, by making
# a hash of numbers that were already checked to avoid redundant pair-checking, or by finding specific patterns in the numbers
# (for instance, all the number pairs where one number was divisible by 10 could have been skipped).