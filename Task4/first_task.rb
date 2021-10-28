
rand(1...10)
array1 = Array.new(14)
array2 = Array.new(14)

for i in 0 ... 14 do
array1[i] = rand(1...10)
end
p array1

i = 7
x = 0
while i >= 0 do
  array2[x] = array1[i]
  i-= 1
  x += 1
end
i = 13
while i >= 8 do
  array2[x] = array1[i]
  x += 1
  i -= 1
end

  p array2
