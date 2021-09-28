class First
  $PInum = 3.14
  $Enum = 2.7182
   print "Enter number x:"
   x = gets.chomp.to_i
   print "Enter number t:"
   t = gets.chomp.to_i
   print "Enter number z:"
   z = gets.chomp.to_i
  y = ($Enum ** (Math.tan(x)) ** 2) + (Math.sqrt((t-z).abs)/Math.cos($PInum ** 2) ** 2 + $Enum ** $PInum * z ** 2) + 2.3 * 10 ** 1.6
  puts y,z
end