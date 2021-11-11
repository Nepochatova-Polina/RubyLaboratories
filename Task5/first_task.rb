def integrate_rectangle(a, b, n, dx = (b - a) / n)
  x = a + dx / 2
  sum = 0
  (1..n).each do
    y = yield(x)
    x += dx
    sum += dx * y
  end
  sum
end

def integrate_trapesoid(a, b, n, dx = (b - a) / n)
  x = a + dx
  sum = dx * (yield(a) / 2 - yield(b) / 2)
  loop do
    y = yield(x)
    sum += dx * y
    x += dx
    break if x > b
  end
  sum
end

def f1(x)
  2 / (1 - 4 * x)
end

def f2(x)
  Math.asin(x) * Math.sqrt(x) / (Math.sqrt(x*(1-x)))
end


result = integrate_rectangle(2.2, -1.2, 100000.0) { |x| f1(x) }
puts "first integral solution by Rectangle method", result, "\n"
result = integrate_trapesoid(2.2, -1.2, 100000.0) { |x| f1(x) }
puts "first integral solution by trapesoid method", result, "\n"

result = integrate_rectangle(0.2, 0.3, 100000.0) { |x| f2(x) }
puts "second integral solution by Rectangle method", result, "\n"
result = integrate_trapesoid(0.2, 0.3, 100000.0) { |x| f2(x) }
puts "second integral solution by trapesoid method", result, "\n"


