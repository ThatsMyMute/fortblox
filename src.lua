
--[[
    Made by thatsmymute feel free to use just give credits
    esp and aimbot exunys
]]
local Players = game:GetService("Players")
local admins_ids = {
    1488594903,
    42638769,
    1666995916,
    580908001,
    1005615945,
    9777151
}




-- Function to convert number to letter
function numberToLetter(number)
  local base = string.byte("A") - 1
  local quotient = math.floor((number - 1) / 26)
  local remainder = (number - 1) % 26
  local letter = string.char(base + remainder + 1)
  if quotient > 0 then
      return numberToLetter(quotient) .. letter
  else
      return letter
  end
end

---Assign letters from "A" to "TY" to Chest objects
for i = 1, 201 do
  local letter = numberToLetter(i)
  game:GetService("Workspace").Chests.Chest.Name = letter
end

local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/ThatsMyMute/fortblox/main/xsx-ui-edit"))()
library.rank = "Dev"
local Wm = library:Watermark("FortBlox-Fucker | v" .. library.version ..  " | " .. library:GetUsername() .. " | rank: " .. library.rank)
local FpsWm = Wm:AddWatermark("fps: " .. library.fps)
coroutine.wrap(function()
    while wait(.75) do
        FpsWm:Text("fps: " .. library.fps)
    end
end)()




local Notif = library:InitNotifications()

local LoadingXSX = Notif:Notify("Loading xsx lib and script hub.", 5, "Ammo-firerate coming eventually") 

library.title = "Fortblox"

library:Introduction()
wait(1)
local Init = library:Init()

local Tab1 = Init:NewTab("ESP")

local Tab2 = Init:NewTab("Misc")

local Tab3 = Init:NewTab("Hitbox>aimbot")

local Tab4 = Init:NewTab("Player Stuff")

local discord = Tab2:NewButton("Discord invite", function()
    library:Copy("https://discord.gg/AK8YFMQ5ww")
    local copied = Notif:Notify("Copied to clipboard!", 5, "put it in discord or whatever")
    end)


local Toggle1 = Tab1:NewToggle("Chest ESP", false, function(obj1)
    local vers = value and "on" or "off"
    local ExunysDeveloperESP = loadstring(game:HttpGet("https://raw.githubusercontent.com/Exunys/Exunys-ESP/main/src/ESP.lua"))()
if obj1 == true then do
  -- Create objects for Chests
  do
      local Hash = {}
      for char = string.byte("A"), string.byte("Z") do
          Hash[string.char(char)] = ExunysDeveloperESP.WrapObject(
              game:GetService("Workspace").Chests[string.char(char)].Bottom,
              "Chests",
              {Tracer = true},
              nil
          )
      end
  end
  
  if obj1 == false then do 
    for key, object in pairs(Hash) do
      local unwrappedObject = ExunysDeveloperESP.UnwrapObject(object)
      -- Do something with the unwrapped object
  end
end
end
end
end
end)

local Toggle2 = Tab1:NewToggle("Player ESP", false, function(value)
    local vers = value and "on" or "off"
   local DendroESP = loadstring(game:HttpGet("https://raw.githubusercontent.com/LordNahida/DendroESP/main/Source.lua"))();

--THIS WILL ONLY WORK ON SYNAPSE NO OTHER EXECUTOR SUPPORTS DRAWING FUNCTIONS PROPERLY.
while value == true do
for _,v in pairs(game.Players:GetChildren()) do 
    if v.Character then 
       DendroESP:AddCharacter(v.Character, "Highlight") -- Modes: BoundingBox, Vertex, Shadow, Orthgonal, Highlight
    end 
    wait()
end 
end


while value == false do 
for _,v in pairs(game.Players:GetChildren()) do 
    if v.Character then 
       DendroESP:ClearESP()-- Modes: BoundingBox, Vertex, Shadow, Orthgonal, Highlight
    end 
    wait()
end 
end
end)

local hitbox = Tab3:NewButton("Hitbox", function()
    

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer
local Character = LocalPlayer.Character

local HeadSize = 35
local Disabled = true


local function updateCharacters()
    if Disabled then
        for _, player in ipairs(Players:GetPlayers()) do
            if player ~= LocalPlayer then
                local character = player.Character
                if character then
                    local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
                    if humanoidRootPart then
                        humanoidRootPart.Size = Vector3.new(HeadSize, HeadSize, HeadSize)
                        humanoidRootPart.Transparency = 0.7
                        humanoidRootPart.BrickColor = BrickColor.new("Really blue")
                        humanoidRootPart.Material = Enum.Material.Neon
                        humanoidRootPart.CanCollide = false
                    end
                end
            end
        end
    end
end


RunService.Stepped:Connect(function()
    updateCharacters()
end)

-- Adjust update interval according to your needs
wait(3)  

while getgenv().Condition do
    -- You can adjust this wait duration according to your needs
    wait(1)  -- Adjust the interval between updates
end

end)


local FinishedLoading = Notif:Notify("Loaded Script :)", 4, "success")


local Slider1 = Tab4:NewSlider("WalkSpeed Slider", "", true, "/", {min = 20, max = 100, default = 20}, function(value)
  local Human = Char and Char:FindFirstChildWhichIsA("Humanoid")
  while task.wait() do
  Human.WalkSpeed = value
  end
end)

local Slider2 = Tab4:NewSlider("Jump Power", "", true,"/",{min = 20, max = 100, default = 20}, function(jp)
while task.wait() do
  Human.JumpPower = jp
end
end)
library:UnlockFps(200) -- thanks for finally updating this nexus :p

-- // FUNCTION DOCS: 
--[[
    MAIN COMPONENT DOCS:
    -- // local library = loadstring(game:HttpGet(link: url))()
    -- // library.title = text: string
    -- // local Window = library:Init()
    -- [library.title contains rich text]
    -- / library:Remove()
    -- destroys the library
    -- / library:Text("new")
    -- sets the lbrary's text to something new
    - / library:UpdateKeybind(Enum.KeyCode.RightAlt)
    -- sets the lbrary's keybind to switch visibility to something new
    __________________________
    -- // local notificationLibrary = library:InitNotifications()
    -- // local Notification = notificationLibrary:Notify(text: string, time: number, type: string (information, notification, alert, error, success))
    -- [Notify contains rich text]
    -- / 3rd argument is a function, used like this:
    
    Notif:Notify("Function notification", 7, function()
        print("done")
    end)
    -- / Welcome:Text("new text")
    -- sets the notifications text to something differet [ADDS A +0.4 ONTO YOUR TIMER]
    __________________________
    -- // local Wm = library:Watermark(text: string)
    -- [Watermark contains rich text]
    -- / Wm:Hide()
    -- hides the watermark from eye view
    -- / Wm:Show()
    -- makes the watermark visible at the top of your screen
    -- / Wm:Text("new")
    -- sets the watermark's text to something new
    -- / Wm:Remove()
    -- destroys the watermark
    __________________________
    -- // local Tab1 = Init:NewTab(text: string)
    -- [tab title contains rich text]
    -- / Tab1:Open()
    -- opens the tab you want
    -- / Tab1:Remove()
    -- destroys the tab
    -- / Tab1:Hide()
    -- hides the tab from eye view
    -- / Tab1:Show()
    -- makes the tab visible on the selection table
    -- / Tab1:Text("new")
    -- sets the tab's text to something new
    __________________________
    -- [label contains rich text]
    -- / Label1:Text("new")
    -- sets the label's text to something new
    -- / Label1:Remove()
    -- destroys the label
    -- / Label1:Hide()
    -- hides the label from eye view
    -- / Label1:Show()
    -- makes the tab visible on the page that is used
    -- / Label1:Align("le")
    -- aligns the label to a new point in text X
    __________________________
    -- [Button contains rich text]
    -- / Button1:AddButton("text", function() end)
    -- adds a new button inside of the frame [CAN ONLY GO UP TO 4 BUTTONS AT A TIME]
    -- / Button1:Fire()
    -- executes the script within the button
    -- / Button1:Text("new")
    -- sets the button's text to something new
    -- / Button1:Hide()
    -- hides the button from eye view
    -- / Button1:Show()
    -- makes the button visible
    -- / Button1:Remove()
    -- destroys the button
    __________________________
    -- [Sections contain rich text]
    -- / Section1:Text("new")
    -- sets the section's text to something new
    -- / Section1:Hide()
    -- hides the section from eye view
    -- / Section1:Show()
    -- makes the section visible
    -- / Section1:Remove()
    -- destroys the section
    __________________________
    -- [Toggles contain rich text]
    -- / Toggle1:Text("new")
    -- sets the toggle's text to something new
    -- / Toggle1:Hide()
    -- hides the toggle from eye view
    -- / Toggle1:Show()
    -- makes the toggle visible
    -- / Toggle1:Remove()
    -- destroys the toggle
    -- / Toggle1:Change()
    -- changes the toggles state to the opposite
    -- / Toggle1:Set(true)
    -- sets the toggle to true even if it is true
    -- / Toggle1:AddKeybind(Enum.KeyCode.P, false, function() end) -- false / true is used for just changing the toggles state
    -- adds a keybind to the toggle
    -- / Toggle1:SetFunction(function() end)
    -- sets the toggles function
    __________________________
    -- [Keybinds contain rich text]
    -- / Keybind1:Text("new")
    -- sets the keybind's text to something new
    -- / Keybind1:Hide()
    -- hides the keybind from eye view
    -- / Keybind1:Show()
    -- makes the keybind visible
    -- / Keybind1:Remove()
    -- destroys the keybind
    -- / Keybind1:SetKey(Enum.KeyCode.P)
    -- sets the keybinds new key
    -- / Keybind1:Fire()
    -- fires the keybind function
    -- / Keybind1:SetFunction(function() end)
    -- sets the new keybind function
    __________________________
    -- [Textboxes contain rich text]
    -- / Textbox1:Input("new")
    -- sets the text box's input to something new
    -- / Textbox1:Place("new")
    -- sets the text box's placeholder to something new
    -- / Textbox1:Fire()
    -- fires the textbox function
    -- / Textbox1:SetFunction(function() end)
    -- sets the text boxes new function
    -- / Textbox1:Text("new")
    -- sets the textbox's text to something new
    -- / Textbox1:Hide()
    -- hides the textbox from eye view
    -- / Textbox1:Show()
    -- makes the textbox visible
    -- / Textbox1:Remove()
    -- destroys the textbox
    __________________________
    -- [Selectors contain rich text]
    -- / Selector1:SetFunction(function() end)
    -- sets the selector new function
    -- / Selector1:Text("new")
    -- sets the selector's text to something new
    -- / Selector1:Hide()
    -- hides the selector from eye view
    -- / Selector1:Show()
    -- makes the selector visible
    -- / Selector1:Remove()
    -- destroys the selector
    __________________________
    -- [Sliders contain rich text]
    -- / Slider1:Value(1)
    -- sets the slider new value
    -- / Slider1:SetFunction(function() end)
    -- sets the slider new function
    -- / Slider1:Text("new")
    -- sets the slider's text to something new
    -- / Slider1:Hide()
    -- hides the slider from eye view
    -- / Slider1:Show()
    -- makes the slider visible
    -- / Slider1:Remove()
    -- destroys the slider
    ---------------------------------------------------------------------------------------------------------
    MISC SEMI USELESS DOCS:
    -- / library.rank = ""
    -- returns the rank you choose (default = "private")
    -- / library.fps
    -- returns FPS you're getting in game
    -- / library.version
    -- returns the version of the library
    -- / library.title = ""
    -- returns the title of the library
    -- / library:GetDay("word") -- word, short, month, year
    -- returns the os day
    -- / library:GetTime("24h") -- 24h, 12h, minute, half, second, full, ISO, zone
    -- returns the os time
    -- / library:GetMonth("word") -- word, short, digit
    -- returns the os month
    -- / library:GetWeek("year_S") -- year_S, day, year_M
    -- returns the os week
    -- / library:GetYear("digits") -- digits, full
    -- returns the os year
    -- / library:GetUsername()
    -- returns the localplayers username
    -- / library:GetUserId()
    -- returns the localplayers userid
    -- / library:GetPlaceId()
    -- returns the games place id
    -- / library:GetJobId()
    -- returns the games job id
    -- / library:CheckIfLoaded()
    -- returns true if you're fully loaded
    -- / library:Rejoin()
    -- rejoins the same server as you was in
    -- / library:Copy("stuff")
    -- copies the inputed string
    -- / library:UnlockFps(500) -- works on exploits with this
    -- sets the max fps to something you choose
    
    -- / library:PromptDiscord("invite")
    -- invites you to a discord
]]
