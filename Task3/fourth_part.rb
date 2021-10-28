$eps = 0.00001
x = 10.0

def factorial(n)
  n > 1 ? n * factorial(n - 1) : 1
end

def first_task
  n = 2
  prev_result = -1
  new_result = 0
  while (new_result - prev_result).abs > $eps
    prev_result = new_result
    new_result += (factorial(n - 1).to_f / factorial(n + 1))**(n*(n + 1))
    n += 1
  end
  new_result
end

def second_task(x)
  n = 0
  result = 0
  while (2 * result - Math.log(x, Math.exp(1))).abs > $eps do
    result += (x - 1)**(2*n+1) / ((2*n + 1)*(x + 1)**(2*n+1))
    n += 1
  end
  result *= 2
end

def third_task
  n = 1
  prev_result = -1
  new_result = 0
  while (new_result - prev_result).abs > $eps
    prev_result = new_result
    new_result += factorial(3*n - 2).to_f * factorial(2*n - 1) /
      (factorial(4*n) * 5**(2*n) * factorial(2*n))
    n += 1
  end
  new_result
end

puts "First = " + first_task.to_s
puts "Second = " + second_task(x).to_s
puts "Third = " + third_task.to_s
