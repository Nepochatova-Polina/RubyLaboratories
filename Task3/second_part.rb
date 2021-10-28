  e = 2.718
  print "Enter number x:"
  x = gets.chomp.to_i
  case x
  when -4...0
    result = ((x - 2).abs / x ** 2 * Math.cos(x)) ** (1 / 7)
    puts result
  when 0...12
    result = ((Math.tan(x + 1 / e ** x)) / (Math.sin(x) ** 2)) ** (2 / 7)
    puts result

  else
    if x < -4 || x > 12
      result = 1 / (1 + (x / (1 + (x / (1 + x)))))
      puts result
    end
  end
