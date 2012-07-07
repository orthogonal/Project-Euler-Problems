# What is the sum of the digits of the number 2**1000?
startTime = Time.now
result = (2**1000).to_s
answer = 0
i = 0
while (i < result.length) do
  answer += result[i].to_i
  i += 1
end
puts(answer)
puts("#{Time.now - startTime}")
# Brute-forced it.  Easy.