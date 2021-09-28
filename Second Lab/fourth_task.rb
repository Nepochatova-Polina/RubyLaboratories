class FourthTask
  num = 333
  sum = ""
  while num != 1
    sum += (num % 2).to_s
    num = num / 2
  end
  puts sum
end