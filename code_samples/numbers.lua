-- all numbers are double precision floating
-- point values (and return IEEE 754 floats)
-- Lua preserves exact integer values (52
-- bits are used to store the integer value)
num = 42

-- arithmetic expressions that can return integer values will
num3 = num / 7 -- 6.0
equal = (6 == num3) -- true -- (6 == 6.0)

-- some can't
num2 = num / 9 -- 4.6666666666667
num4 = num + 0.5 -- 42.5
