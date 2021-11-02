print "Enter number a:"
a = gets.chomp.to_f
print "Enter number b:"
b = gets.chomp.to_f
print "Enter number c:"
c = gets.chomp.to_f
print "Enter number Xstart:"
x_start = gets.chomp.to_f
print "Enter number Xend:"
x_end = gets.chomp.to_f
print "Enter number Xd:"
x_d = gets.chomp.to_f

while x_start < x_end
  if a < 0 && x_start != 0
    func = a * x_start ** 2 + b ** 2 * x_start
  else
    if a > 0 && x_start == 0
      func = x_start - a / (x_start - c)
    else
      func = 1 + x_start / c
    end
  end
  if !(a.truncate | c.truncate) & (b.truncate | c.truncate) == 0
    func = func.round
    puts func
  else
    puts func
  end
  x_start += x_d

end
