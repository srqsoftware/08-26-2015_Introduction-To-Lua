-- comments start with two dashes
--[[
    adding two square brackets
    makes the comments multi-line
--]]

string = 'single quotes strings'
another_sting = "are the same as double quoted"
multiline = [[
    foo
    bar
    ]]

-- strings can be concatenated with `..` 
both = 'one' .. ' two three' 
print(both) --> 'one two three'
