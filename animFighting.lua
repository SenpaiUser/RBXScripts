--GLOBAL VARIABLES

getgenv().walkspeed = 20;
getgenv().str = false;
getgenv().dur = false;
getgenv().chakra = false;
getgenv().sword = false;


--FUNCTIONS

function str()
   while getgenv().str == true do
local args = {[1] = "SpecialAction",[2] = {["Request"] = "Click"}}
game:GetService("ReplicatedStorage").RSPackage.Events.GeneralEvent:FireServer(unpack(args))
local args = { [1] = "Stat", [2] = "Strength"}
game:GetService("ReplicatedStorage").RSPackage.Events.StatFunction:InvokeServer(unpack(args))
	   wait(0.1)
   end
end

function dur()
 while getgenv().dur == true do
local args = {[1] = "Stat",[2] = "Durability"}
game:GetService("ReplicatedStorage").RSPackage.Events.StatFunction:InvokeServer(unpack(args))
	wait(0.1)
 end
end

function chakra()
	while getgenv().chakra == true do
local args = { [1] = "Stat", [2] = "Chakra"}
game:GetService("ReplicatedStorage").RSPackage.Events.StatFunction:InvokeServer(unpack(args))
		wait(0.1)
	end
end

function sword()
	while getgenv().sword == true do
local args = {[1] = "Stat",[2] = "Sword"}
game:GetService("ReplicatedStorage").RSPackage.Events.StatFunction:InvokeServer(unpack(args))
		wait(0.1)
	end
end

--UI LIBRARY

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

local Window = Library.CreateLib("For lazy gay vasia20017", "GrapeTheme")

local Tab = Window:NewTab("Main")
local Tab2 = Window:NewTab("Players")

local Section2 = Tab2:NewSection("Player Scripts")
local Section = Tab:NewSection("Main scripts")

Section2:NewSlider("Walkspeed", "changes player walkspeed", 500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
   getgenv().WalkSpeedValue = s;
local Player = game:service'Players'.LocalPlayer;
Player.Character.Humanoid:GetPropertyChangedSignal'WalkSpeed':Connect(function()
Player.Character.Humanoid.WalkSpeed = getgenv().WalkSpeedValue;
end)
Player.Character.Humanoid.WalkSpeed = getgenv().WalkSpeedValue; 
end)

Section:NewToggle("Strength", "auto farming strength", function(state)
   getgenv().str = state
   if state then
      str()
   end
end)

Section:NewToggle("Durability", "auto farming durability", function(state)
   getgenv().dur = state
   if state then
      dur()
   end
end)

Section:NewToggle("Chakra", "auto farming chakra", function(state)
   getgenv().chakra = state
   if state then
      chakra()
   end
end)

Section:NewToggle("Sword", "auto farming sword", function(state)
   getgenv().sword = state
   if state then
      sword()
   end
end)
