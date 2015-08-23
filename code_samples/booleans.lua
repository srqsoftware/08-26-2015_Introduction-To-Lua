-- booleans
booleanValue = true

-- `not` can be used to invert boolean values
oppositeValue = not booleanValue --> false
definitelyBoolean = not not booleanValue --> true
if not oppositeValue then print('it was false') end
  --> it was false

-- `not` can be used to coerce values of other types to booleans
-- all values except nil and false are considered truthy
print(not 'a') --> false
print(not not 'a') --> true
