def fibonacci(num)
    # the fibonacci sequence always starts with
    a = 0
    b = 1

    # Compute Fibonacci number in the num position
    index.times do
    	# we use this extra temp variable because we need to
    	# reassign the variable a, but we do not want to loose a's original value
    	# because we need it for b = temp + b
        temp = a
        a = b
        # Add up previous two numbers in sequence.
        b = temp + b
    end

    return a
end

#returns number in the 4th position of the fibonacci sequence
puts fibonacci(6, 3)


def fib_array(num)

array = []
# return Fibonacci numbers in sequence and stores them as an array
num.times do |n|
    result = fibonacci(n)
    array << result
end

#returns the array
array

end

puts fib_array(4)