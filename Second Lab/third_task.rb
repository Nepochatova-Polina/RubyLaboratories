class ThirdTask
  num = [1,0,1,0,1,0,1,0,1,0,1,0,1,0]
  x = num.size
  sum = 0
  for count in num
    sum += num[count] * (2 ** x)
    x -= 1
  end
  puts sum
end