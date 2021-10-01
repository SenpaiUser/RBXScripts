if game.PlaceId == "2512643572" then
  -- UI LIBRARY

local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()

local w = library:CreateWindow("Bubble Gum Simulator") 

local b = w:CreateFolder("Auto Farm")

b:Toggle("Auto Blow",function(bool)
    getgenv().autoblow = bool
    if bool then
        ablow();
	end	
end)

b:Toggle("Auto Sell", function(bool)
	getgenv().autosell = bool
	if bool then
	  asell();
	end
end)

b:Toggle("Buy Egg", function(bool)
	getgenv().buyegg = bool
	if bool then
        begg("Spotted Egg")
	end
end)






-- EXPLOITS SCRIPT
getgenv().autoblow = false;
getgenv().autosell = false;
getgenv().buyegg = false;


function ablow()
	spawn(function()
		while getgenv().autoblow == true do			
local args = {[1] = "BlowBubble"}
game:GetService("ReplicatedStorage").NetworkRemoteEvent:FireServer(unpack(args))
wait()
		end
	end)
end

function asell()
spawn(function()
	while getgenv().autosell == true do
local args = {[1] = "SellBubble",[2] = "Sell"}
game:GetService("ReplicatedStorage").NetworkRemoteEvent:FireServer(unpack(args))
wait()
	end
   end)	
end

function begg(eggType)
	spawn(function()
		while wait() do
			if not getgenv().buyegg then break end;
local args = {[1] = "PurchaseEgg",[2] = eggType}
game:GetService("ReplicatedStorage").NetworkRemoteEvent:FireServer(unpack(args))
		end
	end)
end


end
