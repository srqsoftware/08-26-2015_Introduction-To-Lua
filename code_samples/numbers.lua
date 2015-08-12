-- all numbers are doubles (double precision floating point values)
-- Lua preserves exact integer values (52 bits are used to store the integer value)
num = 42 

num2 = num / 9 -- 4.6666666666667
num3 = num / 7 -- 6.0
num4 = num + 0.5
num4 -- 42.5
(6 == num3) -- true (6 == 6.0)
