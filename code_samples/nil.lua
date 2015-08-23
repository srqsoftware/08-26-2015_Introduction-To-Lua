-- nil - Lua's undefined or null value
-- when a key is missing in a table nil is returned
table = {}
print(table.nonExistent) --> nil

-- setting a variable to nil allows the value of
-- the variable to be garbage collected
largeValue = nil
-- `largeValue` will now be removed from memory
