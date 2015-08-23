-- scoping
-- again, very much JavaScript
-- instead of `window` we have `_G`
global_scope = _G

-- variables in the global scope are really attributes on `_G` 
print(global_scope == _G.global_scope) --> true

-- variables can be made local to the block they are declared in
if x > 1 then
    local y = 10
    print(y)
end

-- variables can also be local to functions
print_lang = function ()
    local lang = 'Lua'
    print(lang)
end
