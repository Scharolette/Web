local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
-- Script made by Scharolette#6473 https://discord.gg/ReFfRQHhdt

-- Todo:
-- Add a check for when the user's wins don't go up anymore, when that happens- rejoin and keep going

-- Variable Init
local delay = 0.5

-- UI Window
local Window = OrionLib:MakeWindow({Name = "Race Clicker | Scharolette#6473", HidePremium = true, SaveConfig = false, IntroEnabled = false, ConfigFolder = "Scharolette")

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- First Tab
local Tab = Window:MakeTab({
    Name = "Autofarm",
    Icon = "👨‍🌾",
    PremiumOnly = false
})

Tab:AddToggle({ -- Auto claw toggle
	Name = "Auto Win",
	Callback = function(bool)
	Default = false
	getgenv().autoWin = bool
	
	if bool == true then
	    AutoWin()
	end
end})

function AutoWin()
    while getgenv().autoWin do
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-441063, 3.47593, 34984.5) -- 100000 Wins Board
        task.wait(1)
    end
end