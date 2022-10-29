local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
-- Script made by Scharolette#6473 https://discord.gg/ReFfRQHhdt

-- UI Window
local Window = OrionLib:MakeWindow({Name = "Longest Answer Wins | Scharolette#6473", HidePremium = true, SaveConfig = false, IntroEnabled = false, ConfigFolder = "Scharolette"})

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- First Tab
local Tab = Window:MakeTab({
    Name = "Autofarm",
    Icon = "👨",
    PremiumOnly = false
})

Tab:AddToggle({ -- Auto Answer toggle
	Name = "Auto Answer",
	Callback = function(bool)
	Default = false
	getgenv().autoAnswer = bool
	
	if bool == true then
	    AutoAnswer()
	end
end})

function AutoAnswer()
    while getgenv().autoAnswer do
        task.wait(1)
        if game:GetService("ReplicatedStorage").Time.TimeLeft.Value < 3 then
            local args = {
                [1] = game:GetService("ReplicatedStorage").HintAnswer.Value,
                [2] = 4
            }
            
            game:GetService("ReplicatedStorage").SubmittedAnswer:FireServer(unpack(args))
        end
    end 
end