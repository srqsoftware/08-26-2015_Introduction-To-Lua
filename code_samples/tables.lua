-- Lua tables
-- Lua's only compound data structures
empty = {}

-- tables are really key value stores
user = {name = 'Roberto', favorite_language = 'Lua'}

-- similar to JavaScript objects, only no actual methods exist on the table
user2 = {name = 'Joe', favorite_language = 'Erlang'}

-- looking up the value of a string key is trivial:
firstname = user2.name --> 'Joe'
firstname = user2['name'] --> 'Joe'

-- both keys and values can of any type, but by default keys are strings
numbers = {[12] = 'twelve', [13] = 'thirteen', [14] = 'fourteen'}

-- tables can represent arrays
array = {'a', 'b', 'c'}
-- this is really a table. it is stored as this:
-- {1 = 'a', 2 = 'b', 3 = 'c'}

-- getting the length of array is easy
length = #array --> 3

-- iterating over tables is also trivial
print_table = function (table)
    for k, v in pairs(table) do
        print('key:', k, 'value:', v)
    end
end

print_table(user)
--> key: name value: Roberto
--> key: favorite_language value: Lua

print_table(array)
--> key: 1 value: a
--> key: 2 value: b
--> key: 3 value: c
