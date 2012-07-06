# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum. #
sum_of_squares = (100) * (100 + 1) * (200 + 1) / 6
square_of_sums = 5050**2
puts "#{sum_of_squares}, #{square_of_sums} #{sum_of_squares - square_of_sums}"

# Nothing fancy here, just the fact that sum_{k=1}^{n}k^2 = (n(n+1)(2n+1))/6