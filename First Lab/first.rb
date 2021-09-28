class FirstLab
  $Pinum = 3.145
  $Enum = 2.7182
   print "Enter number x:"
   x = gets.chomp.to_i
   print "Enter number t:"
   t = gets.chomp.to_i
   print "Enter number z:"
   z = gets.chomp.to_i
  y = ($Enum ** (Math.tan(x)) ** 2) + (Math.sqrt((t-z).abs)/Math.cos($Pinum ** 2) ** 2 + $Enum ** $Pinum * z ** 2) + 2.3 * 10 ** 1.6
  puts y
end