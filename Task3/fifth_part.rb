$N = 10
$c = 30
$pi = 3.141

def calculate_y(x)
  ((x**((($N-$c) ** 2 + 4*$N*$c) /($N ** 2 - $c ** 2) )) ** 1/$N) + ((x / $N + 12)/(6 - $c*x))
end

def calculate_z(x)
  (1 - Math.cos(4 * x) / (Math.cos(2*x) ** 1/2) -1) + 1 + Math.cos(4*x) / ((Math.sin(2*x) ** 1/2) -1)
  + Math.tan(2 * $pi / 9 - x) ** $c / $N
end

def output_dict(dict)
  dict.each { |i|
    puts i, dict[i]
  }
end

first_result = {}
(1..$N).step(($N - 1).to_f / ($N + $c)) do |i|
  first_result[i] = calculate_y(i)
end


second_result = {}
i = $pi / $N
delta = ($pi - $pi / $N) / ((3.0/2)*$N + $c)
while i <= $pi do
  second_result[i] = calculate_z(i)
  i += delta
end


third_result = {}
(2..$c).step(($c - 2).to_f / (2*$N)) do |j|
  if j > 2 && j < $N
    third_result[j] = calculate_y(j)
  elsif j > $N && j < 2*$N
    third_result[j] = calculate_z(j)
  else
    third_result[j] = calculate_y(j) + calculate_z(j)
  end
end



puts "FIRST"
output_dict(first_result)
puts "SECOND"
output_dict(second_result)
puts "THIRD"
output_dict(third_result)