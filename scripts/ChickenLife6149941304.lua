local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
-- Script made by Scharolette#6473 https://discord.gg/ReFfRQHhdt

-- Todo:
-- Add an auto gather: logs, rock, food
-- Add an auto lay
-- Add a 90* rotate button for building

-- UI Window
local Window = OrionLib:MakeWindow({Name = "Chicken Life | Scharolette#6473", HidePremium = true, SaveConfig = false, IntroEnabled = false, ConfigFolder = "Scharolette"})

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- First Tab
local Tab = Window:MakeTab({
    Name = "Autofarm",
    Icon = "👨‍🌾",
    PremiumOnly = false
})

Tab:AddToggle({ -- Instant hatch toggle
	Name = "Instant Hatch",
	Callback = function(bool)
	Default = false
	getgenv().instantHatch = bool
	
	if bool == true then
	    InstantHatch()
	end
end})

function InstantHatch()
    while getgenv().instantHatch do
        task.wait(0.25)
        if game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Holder2.Eggs.EggAmount.ContentText * 1 > 0 then
            task.wait(3) -- Wait added to let egg grow
            repeat
                game:GetService("ReplicatedStorage").EggSetup.ChickHatch:FireServer()
                task.wait()
            until game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Holder2.Eggs.EggAmount.ContentText * 1 == 0
        end
    end
end