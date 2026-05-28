# 1 1 2 3 5 8 13 21 34 55 ...

print "Enter number: "
number = gets.chomp.to_i

fibonacciPrev = 0
fibonacci = 1

while fibonacci <= number
  puts fibonacci
  #temp = fibonacci
  #fibonacci += fibonacciPrev
  #fibonacciPrev = temp
  
  #pararel assignement
  fibonacciPrev, fibonacci = fibonacci, fibonacci+fibonacciPrev
end