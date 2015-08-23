-- metatables
-- metatables are similiar to JavaScript prototypes and provide
-- a sort of operator overloading
-- metatables can contain various attributes that are read by Lua when
-- performing certainly operations. For example,
-- __index is a metatable attribute Lua checks when a key is missing in a table
defaults = {favorite_language = 'Lua'}
defaults.__index = defaults
user = {}

-- if we set `defaults` as the metatable lua will check the table assigned
-- to the metatables `__index` attribute if a key is missing
setmetatable(user, defaults)
print(getmetatable(user)) --> table: 0x15ebe60
print(user.favorite_language) --> 'Lua'

-- there are many other metatable attributes - __newindex, __mode, __call, __metatable, __tostring, __len, __gc, __eq, __lt, __le, __unm, __add, __sub, __mul, __div, __mod, __pow, __concat
