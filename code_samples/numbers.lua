num = 42 -- all numbers are doubles.
-- Don't freak out, 64-bit doubles have 52 bits for storing exact int
-- -- values; machine precision is not a problem for ints that need < 52 bits.

float = 42.5
half = 0.5
baz = float - half 
baz -- 42.0
(num == (foo - bar)) -- true
num2 = num / 7 -- 4.5714285714286
