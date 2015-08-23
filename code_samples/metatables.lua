-- metatables
-- metatables are similiar to JavaScript prototypes and provide
-- a sort of operator overloading
user_defaults = {favorite_language = 'Lua'}
-- metatables can contain various attributes that are read by Lua when
-- performing certainly operations. For example,
-- __index is a metatable attribute Lua checks when a key is missing in a table
user_defaults.__index = user_defaults
user = {}

-- if we set user_defaults as the metatable lua will check the table assigned
-- to the metatables `__index` attribute
setmetatable(user, user_defaults)
print(getmetatable(user)) --> table: 0x15ebe60
print(user.favorite_language) --> 'Lua'
