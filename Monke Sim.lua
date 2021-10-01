-- ui library
local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()

local w = library:CreateWindow("Monke Sim") 

local b = w:CreateFolder("Auto Farm")

b:Toggle("Strength",function(bool)
    getgenv().autoSTR = bool
	if bool then
       str();  
	end
    
end)

b:Toggle("Durability",function(bool)
    getgenv().autoDUR = bool
	if bool then
       dur();  
	end
    
end)

b:Toggle("Mind",function(bool)
    getgenv().autoMIND = bool
	if bool then
       mind();  
	end
    
end)

b:Button("inf strength",function()
local args = {[1] = 1000}
game:GetService("ReplicatedStorage").Remotes.Strength:FireServer(unpack(args))
end)

b:Button("inf durability",function()
local args = {[1] = 1000}
game:GetService("ReplicatedStorage").Remotes.Durability:FireServer(unpack(args))
end)

b:Button("inf mind",function()
local args = {[1] = 1000}
game:GetService("ReplicatedStorage").Remotes.Mind:FireServer(unpack(args))
end)





-- cheats script
getgenv().autoSTR = false;
getgenv().autoDUR = false;
getgenv().autoMIND = false;

function str()
  spawn(function()
  while getgenv().autoSTR == true do
	 local args = {[1] = 1}
game:GetService("ReplicatedStorage").Remotes.Strength:FireServer(unpack(args))
wait()   
  end
   end)	
end

function dur()
	spawn(function()
		while getgenv().autoDUR == true do
local args = {[1] = 1}
game:GetService("ReplicatedStorage").Remotes.Durability:FireServer(unpack(args))
wait()
		end
	end)
end

function mind()
	spawn(function()
		while getgenv().autoMIND == true do
local args = {[1] = 1}
game:GetService("ReplicatedStorage").Remotes.Mind:FireServer(unpack(args))
wait()
		end
	end)
end
