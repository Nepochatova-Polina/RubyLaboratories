size = 8

vectory = Array.new(size)
matrix = Array.new(size).map! { Array.new(size) }

for i in 0...size do
  vectory[i] = rand(1...10)
end
p "Vector"
p vectory
p "Matrix"
for i in 0...size do
  for j in 0...size do
    if i == j
      matrix[i][j] = 1
    else
      matrix [i][j] = rand(10)
    end
  end
end
m1 = matrix.to_a
puts m1.to_a.map(&:inspect)

result = Array.new(size)
for  i in 0...size do
   temp = 0
for  j in 0... size do
  temp += matrix[i][j]*vectory[i];
end
   result[i] = temp
end
p "Result"
p result
