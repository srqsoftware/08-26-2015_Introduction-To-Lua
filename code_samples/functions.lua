-- functions
function add (a, b)
    return a + b
end

add(2,3) --> 5

-- closures and anonymous functions are possible
function multiply_by(x)
    -- `x` retains the value passed into `multiply_by`
    -- when called used in the returned function later
    return function (y) return y * x end
end

double = multiply_by(2) -- functions are first class
double(8) --> 16

-- recursive functions are possible
function factorial(num, acc)
    acc = acc or 1
    if num == 0 then
        return acc
    else
        return factorial(num - 1, num * acc)
    end
end

-- all parameters need not be present
factorial(6) -- in this case `acc` will default to nil
--> 720

-- functions call return multiple values
function multiples_of(num)
    return 1 * num, 2 * num, 3 * num
end

multiples_of(4) -- > 4  8  12

-- functions can take a variable number of arguments
function add_all(...)
    local sum = 0
    for index, value in ipairs{...} do
        sum = sum + value
    end
    return sum
end

add_all(1,2,3,4) --> 10
