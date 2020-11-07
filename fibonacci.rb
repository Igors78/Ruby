# frozen_string_literal: true

def fibonacci_sum_even(num)
  fibonacci = [1, 1]
  # next_fib = 0
  while (next_fib = fibonacci[0] + fibonacci[1]) <= num
    fibonacci.unshift(next_fib)
  end
  fibonacci.select(&:even?).sum
end

p fibonacci_sum_even(150)
