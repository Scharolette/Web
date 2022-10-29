local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
-- Script made by Scharolette#6473 https://discord.gg/ReFfRQHhdt

-- UI Window
local Window = OrionLib:MakeWindow({Name = "Merge Droppers | Scharolette#6473", HidePremium = true, SaveConfig = false, IntroEnabled = false, ConfigFolder = "Scharolette"})

-- Variable Initilization
for i,v in pairs(game:GetService("Workspace").Tycoon.Plot:GetChildren()) do
    print(v)
    print(v.Owner.Value == game:GetService("Players").LocalPlayer)
    if v.Owner.Value == game:GetService("Players").LocalPlayer then
        print(v.Owner.Value)
        userTycoon = v
        print(userTycoon)
    end
end
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- First Tab
local Tab = Window:MakeTab({
    Name = "Autofarm",
    Icon = "",
    PremiumOnly = false
})

Tab:AddToggle({ -- Inf Parts toggle
	Name = "Inf Parts",
	Callback = function(bool)
	Default = false
	getgenv().infParts = bool
	
	if bool == true then
	    InfParts()
	end
end})

Tab:AddToggle({ -- Auto Desposit toggle
	Name = "Auto Deposit",
	Callback = function(bool)
	Default = false
	getgenv().autoDeposit = bool
	
	if bool == true then
	    AutoDeposit()
	end
end})

Tab:AddToggle({ -- Auto Upgrade Rate toggle
	Name = "Auto Upgrade Rate",
	Callback = function(bool)
	Default = false
	getgenv().autoUpgradeRate = bool
	
	if bool == true then
	    AutoUpgradeRate()
	end
end})

function InfParts()
    while getgenv().infParts do
        task.wait()
        local args = {
            [1] = 16,
            [2] = Vector3.new(0, 0, 0)
        }
        
        game:GetService("ReplicatedStorage").Signals.RemoteEvents.GetWoolRemote:FireServer(unpack(args))
    end 
end

function AutoUpgradeRate()
    while getgenv().autoUpgradeRate do
        firetouchinterest(userTycoon["Buttons_E"].Upgrade.Head, game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, 0)
        task.wait()
        firetouchinterest(userTycoon["Buttons_E"].Upgrade.Head, game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, 1)
        task.wait()
    end
end

function AutoDeposit()
    while getgenv().autoDeposit do
        firetouchinterest(userTycoon["Buttons_E"].Put.Head, game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, 0)
        task.wait()
        firetouchinterest(userTycoon["Buttons_E"].Put.Head, game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, 1)
        task.wait()
    end
end
