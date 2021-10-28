  a = true
  b = false
  c = true
  x = 50
  y = 10
  z = -5
  puts "1."
  result = !(a || b) && (a && !b)
  puts "a:" + result.to_s
  result = (z != y).object_id <= (6 > y).object_id && (x ** 2 > y ** 2) || (z > 1.5)
  puts "b:" + result.to_s
  result = (8 - x * 2 <= z) && (x ** 2 >= y ** 2) || (z >= 15)
  puts "c:" + result.to_s
  result = x > 0 && y < 0 || z >= (x * y - (-y / x) + (-z) / 2)
  puts "d:" + result.to_s
  result = !(a || b && !(c || (!a || b)))
  puts "e:" + result.to_s
  result = x ** 2 + y ** 2 >= 1 && x >= 0 && y >= 0
  puts "f:" + result.to_s
  result = (a && ((c && b).object_id <= (b || a).object_id) || c) && b
  puts "g:" + result.to_s

  x = 4.5
  p = true
  result = !((Math.exp(x ** 2) - Math.sin(x)) < 3.14) && (p || !p)
  puts "2." + result.to_s
