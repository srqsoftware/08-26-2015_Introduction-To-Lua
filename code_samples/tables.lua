-- Lua tables
-- Lua's only compound data structures
empty = {}

-- tables are really key value stores
user = {name = 'Roberto', favorite_language = 'Lua'}

-- similar to JavaScript objects, only no actual methods exist on the table
user2 = {name = 'Joe', favorite_language = 'Erlang'}
firstname = user2.name --> 'Joe'

-- tables can represent arrays
array = {'a', 'b', 'c'}
-- this is really a table. it is stored as this:
-- {1 = 'a', 2 = 'b', 3 = 'c'}

-- getting the length of array is easy
length = #array --> 3
