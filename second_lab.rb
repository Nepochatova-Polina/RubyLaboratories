class SecondLab
  count = 0
  sum = 0
  x = [50, 62, 71, 82, 112, 159, 217, 264, 299, 354,
       402, 435, 476, 489, 503, 506, 508, 497, 483, 419,
       382, 370, 362, 342, 288, 257, 248, 239, 207, 181,
       119, 101, 87, 105, 81, 62]
  y = [162, 123, 92, 73, 58, 40, 34, 31, 29, 29,
       27, 32, 77, 97, 140, 181, 219, 243, 248,
       256, 228, 199, 151, 125, 121, 160, 211,
       247, 267, 273, 271, 250, 217, 188, 179, 176]

  while count <= 34 do
    sum += (x[count] + x[count + 1])*(y[count] - y[count + 1])
    count += 1
  end
  p sum
  square = (sum).abs * 0.5

  puts "Using standart formula result: " + square.to_s
end