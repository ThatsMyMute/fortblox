--  should work :)
local reg = 10154245153
local br1 = 14907807948
local br2 = 14907786755
if game.PlaceId == reg then
    local src = game:HttpGet("https://raw.githubusercontent.com/ThatsMyMute/fortblox/main/src.lua")
    loadstring(src)()
end

if game.PlaceId == br1 then
    local br = game:HttpGet("https://raw.githubusercontent.com/ThatsMyMute/fortblox/main/battleroyal.lua")
    loadstring(br)()
end
if game.PlaceId == br2 then
    local br = game:HttpGet("https://raw.githubusercontent.com/ThatsMyMute/fortblox/main/battleroyal.lua")
    loadstring(br)()
end

