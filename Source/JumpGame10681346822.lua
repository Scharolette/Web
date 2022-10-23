local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
-- Script made by Scharolette#6473 https://discord.gg/ReFfRQHhdt

-- UI Window
local Window = OrionLib:MakeWindow({Name = "Jump Game | Scharolette#6473", HidePremium = true, SaveConfig = false, IntroEnabled = false, ConfigFolder = "Scharolette"})

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- First Tab
local Tab = Window:MakeTab({
    Name = " ",
    Icon = "",
    PremiumOnly = false
})

Tab:AddToggle({ -- Auto Win toggle
	Name = "Auto Win",
	Callback = function(bool)
	Default = false
	getgenv().autoWin = bool
	
	if bool == true then
	    AutoWin()
	end
end})

Tab:AddButton({
    Name = "Buy all items",
    Callback = function(bool)
    BuyAll()
end})

function AutoWin()
    while getgenv().autoWin do
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-50.3422, 2623.1, 26.4913)
        task.wait()
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(33, 2255.1, 107.5)
        task.wait()
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(6010.62, 2255.1, 106.5)
        task.wait()
    end
end

function BuyAll()
    game:GetService("ReplicatedStorage").ToolEvents.HamburgerEvent:FireServer()
    game:GetService("ReplicatedStorage").ToolEvents.BloxyColaEvent:FireServer()
    game:GetService("ReplicatedStorage").ToolEvents.SpeedCoilEvent:FireServer()
    game:GetService("ReplicatedStorage").ToolEvents.SaxophoneEvent:FireServer()
    game:GetService("ReplicatedStorage").ToolEvents.SprayEvent:FireServer()
    game:GetService("ReplicatedStorage").ToolEvents.RadioEvent:FireServer()
    task.wait()
end
