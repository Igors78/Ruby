def fibonacci_sum_even(n)
  fibonacci = [1, 1]
  next_fib = 0
  while ((next_fib = fibonacci[0] + fibonacci[1]) <= n)
    fibonacci.unshift(next_fib)
  end
  fibonacci.select { |x| x.even? }.sum
end

p fibonacci_sum_even(150)
