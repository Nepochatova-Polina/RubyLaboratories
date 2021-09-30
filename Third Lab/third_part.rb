class ThirdPart
  l = 0.0
  result = 0.0
  loop do
    result += 1/(3 ** l)
    l += 1
    break if l == 9
  end
  puts result
  result = 1.0
  x = 2.0
  n = 1
  y = 2.0
  z = 3.0
  loop do
    if n.odd? == true
    result -= (y/z) * (x ** n)
    else
      result += (y/z) * (x ** n)
    end
    y += 1
    z += 1
    n += 1
    break if n == 11
  end
  puts result
  end
