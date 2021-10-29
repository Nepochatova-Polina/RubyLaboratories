puts "Enter size of matrix from 3 to 9"
size = gets.to_i

if size > 9 || size < 3
  puts "Wrong size"
  return
else
  vector = Array.new(size)
  matrix = Array.new(size).map! { Array.new(size) }
  for i in 0...size do
    vector[i] = i + 1
  end
  p "Vector"
  p vector
  p "Matrix"
  for i in 0...size do
    for j in 0...size do
      if i == j
        matrix[i][j] = 2
      else
        matrix [i][j] = 12
      end
    end
  end
  m1 = matrix.to_a
  puts m1.to_a.map(&:inspect)
  for i in 0...size do
    matrix[i][size] = i + 1
  end
  n = size
  matrix_clone = (0...n).map { Array.new(n + 1) }
  for i in 0...n
    for j in 0...n + 1
      matrix_clone[i][j] = matrix[i][j]
    end
  end
  for k in 0...n
    for i in 0...n + 1
      matrix_clone[k][i] = matrix_clone[k][i] / matrix[k][k]
    end
    for i in k + 1...n
      temp = matrix_clone[i][k] / matrix_clone[k][k]

      for j in 0...n + 1
        matrix_clone[i][j] = matrix_clone[i][j] - matrix_clone[k][j] * temp
      end
    end

    for i in k + 1...n
      for j in 0...n + 1
        matrix[i][j] = matrix_clone[i][j]
      end
    end
  end
  for k in n - 1...-1
    for i in n...-1
      matrix_clone[k][i] = matrix_clone[k][i] / matrix[k][k]
    end

    for i in k - 1...-1
      double var = matrix_clone[i][k] / matrix_clone[k][k]
      for j in n...-1
        matrix_clone[i][j] = matrix_clone[i][j] - matrix_clone[k][j] * var
      end
    end
  end
  answer = Array.new(n)
  for i in 0...n
    answer[i] = matrix_clone[i][n];
  end
  p answer
end
