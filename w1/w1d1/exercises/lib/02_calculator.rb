def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

def sum(arr)
  sum = 0
  arr.each { |el| sum += el }
  sum
end

def multiply(arr)
  total = 1
  arr.each { |num| total *= num }
  total
end

def power(a, b)
  a ** b
end

def factorial(n)
  total = 1
  (1..n).to_a.each { |int| total *= int }
  total
end
