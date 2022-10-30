local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
-- Script made by Scharolette#6473 https://discord.gg/ReFfRQHhdt

-- UI Window
local Window = OrionLib:MakeWindow({Name = "Speed Simulator | Scharolette#6473", HidePremium = true, SaveConfig = false, IntroEnabled = false, ConfigFolder = "Scharolette"})

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- First Tab
local Tab = Window:MakeTab({
    Name = "Autofarm",
    Icon = "",
    PremiumOnly = false
})

Tab:AddToggle({ -- Inf speed toggle
	Name = "Inf Speed",
	Callback = function(bool)
	Default = false
	getgenv().infSpeed = bool
	
	if bool == true then
	    InfSpeed()
	end
end})

Tab:AddToggle({ -- Auto rebirth toggle
	Name = "Auto Rebirth",
	Callback = function(bool)
	Default = false
	getgenv().autoRebirth = bool
	
	if bool == true then
	    AutoRebirth()
	end
end})

function InfSpeed()
    while getgenv().infSpeed do
        local args = {
            [1] = 1e+2500,
            [2] = 1
        }

        game:GetService("ReplicatedStorage").GlobalFunctions.AddPlayerSpeed:FireServer(unpack(args))
        task.wait()
    end
end

function AutoRebirth()
    while getgenv().autoRebirth do
        game:GetService("ReplicatedStorage").GlobalFunctions.RebirthPlayerCallFromClient:FireServer()
        task.wait()
    end 
end
