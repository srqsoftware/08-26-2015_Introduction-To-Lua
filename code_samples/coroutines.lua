-- Coroutines
-- much like JavaScript callbacks (e.g. setTimeout)
co = coroutine.create(function () print("hi") end)
print(co) --> thread: 0x1d6f858

coroutine.status(co) -- suspended
coroutine.resume(co) -- true
-- hi
coroutine.status(co) -- dead

-- coroutine functions can suspend themselves by calling yield
loop = coroutine.create(function () 
    for i = 1, 10 do
        print("interation", i)
        coroutine.yield()
    end
end)

coroutine.status(loop) -- suspended
coroutine.resume(loop) -- true
-- interation  1
coroutine.resume(loop) -- true
-- interation  2
coroutine.resume(loop) -- true
-- interation  3
coroutine.status(loop) -- suspended
