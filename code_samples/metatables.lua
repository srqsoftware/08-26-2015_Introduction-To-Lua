-- metatables
-- metatables are similiar to JavaScript prototypes and provide
-- a sort of operator overloading
defaults_metatable = {favorite_language = 'Lua'}
defaults_metatable.__index = defaults_metatable
table = {}

setmetatable(table, defaults_metatable)
print(getmetatable(table)) --> table: 0x15ebe60
print(table.favorite_language) --> 'Lua'
