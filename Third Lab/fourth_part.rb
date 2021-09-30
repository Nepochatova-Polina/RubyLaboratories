class FourthPart
  f = factorial(4)
  puts f

def factorial n
  n > 1 ? n * factorial(n - 1) : 1
end
end