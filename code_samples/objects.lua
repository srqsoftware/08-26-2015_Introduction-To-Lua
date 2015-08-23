-- object oriented programming
-- with metatables creating objects and classes is easy
local User = {}
User.__index = User

function User:new(first_name, last_name, favorite_language)
    local user = {
        first_name = first_name,
        last_name = last_name,
        favorite_language = favorite_language
    }
    setmetatable(user, User)
    return user
end

-- this:
function User:display_name()
    return self.first_name .. ' ' .. self.last_name
end

-- is the same as this:
function User.display_name(self)
    return self.first_name .. ' ' .. self.last_name
end

User.__tostring = User.display_name

local u = User:new('Joe', 'Armstrong', 'Erlang')
print(u:display_name()) --> 'Joe Armstrong'
print(u) --> 'Joe Armstrong'
