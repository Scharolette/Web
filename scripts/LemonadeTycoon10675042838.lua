local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
-- Script made by Scharolette#6473 https://discord.gg/ReFfRQHhdt

-- Variables
local userTycoon = nil

-- Tycoon Check
for i,v in pairs(game:GetService("Workspace").Tycoons:GetChildren()) do
    if v.Owner.Value == game:GetService("Players").LocalPlayer then
        userTycoon = v
    end
end

-- UI
local Window = OrionLib:MakeWindow({Name = "Lemonade Tycoon | Scharolette#6473", HidePremium = true, SaveConfig = false,IntroEnabled = false, ConfigFolder = "Scharolette"})

local Tab = Window:MakeTab({
    Name = "Grind",
    Icon = "",
    PremiumOnly = false
})

Tab:AddButton({
	Name = "Purchase Random Button",
	Callback = function(bool)
	PurchaseButton()
end})

Tab:AddButton({
	Name = "Beat All Obbies",
	Callback = function(bool)
    BeatObbies()
end})

Tab:AddButton({
	Name = "Teleport to your Tycoon",
	Callback = function(bool)
    Teleport()
end})

function PurchaseButton()
    for i,v in pairs(userTycoon.Buttons:GetDescendants()) do
        if v:IsA("TouchTransmitter") then
            firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, v.Parent, 0)
            task.wait(0.1)
            firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, v.Parent, 1)
        end
    end
end

function BeatObbies()
    game:GetService("ReplicatedStorage").Events.Remotes.Obby:FireServer("Easy")
    game:GetService("ReplicatedStorage").Events.Remotes.Obby:FireServer("Medium")
    game:GetService("ReplicatedStorage").Events.Remotes.Obby:FireServer("Hard")
end

function Teleport()
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = userTycoon.Core.TreeFarm1.Ground.CFrame
end