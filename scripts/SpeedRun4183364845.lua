local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
-- Script made by Scharolette#6473 https://discord.gg/ReFfRQHhdt

-- UI
local Window = OrionLib:MakeWindow({Name = "Speed Run 4 | Scharolette#6473", HidePremium = true, SaveConfig = false,IntroEnabled = false, ConfigFolder = "Scharolette"})

local Tab = Window:MakeTab({
    Name = "Autofarm",
    Icon = "",
    PremiumOnly = false
})

Tab:AddToggle({
	Name = "Gem Farm",
	Callback = function(bool)
	Default = false
	getgenv().GemFarm = bool
	
	if bool == true then
	    GemFarm()
	end
end})

Tab:AddButton({
	Name = "Get all stars in current dimension (slow)",
	Callback = function(bool)
    GetStars()
end})

function GemFarm()
    while getgenv().GemFarm == true do
        local level = 0
        
        while level < 30 do
            level = level + 1
            local args = {
                [1] = 1,
                [2] = "Level 1",
                [3] = "Normal",
                [4] = false
            }
            
            game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
            task.wait(0.25)
        end
            local args = {
                [1] = 0
            }
        
            game:GetService("ReplicatedStorage").SetLevel:FireServer(unpack(args))
    end
end

function GetStars()
    game:GetService("ReplicatedStorage").GotStar:FireServer("Level 1")
    task.wait(7)
    game:GetService("ReplicatedStorage").GotStar:FireServer("Level 2")
    task.wait(7)
    game:GetService("ReplicatedStorage").GotStar:FireServer("Level 3")
    task.wait(7)
    game:GetService("ReplicatedStorage").GotStar:FireServer("Level 4")
    task.wait(7)
    game:GetService("ReplicatedStorage").GotStar:FireServer("Level 5")
    task.wait(7)
    game:GetService("ReplicatedStorage").GotStar:FireServer("Level 6")
    task.wait(7)
    game:GetService("ReplicatedStorage").GotStar:FireServer("Level 7")
    task.wait(7)
    game:GetService("ReplicatedStorage").GotStar:FireServer("Level 8")
    task.wait(7)
    game:GetService("ReplicatedStorage").GotStar:FireServer("Level 9")
    task.wait(7)
    game:GetService("ReplicatedStorage").GotStar:FireServer("Level 10")
    task.wait(7)
    game:GetService("ReplicatedStorage").GotStar:FireServer("Level 11")
    task.wait(7)
    game:GetService("ReplicatedStorage").GotStar:FireServer("Level 12")
    task.wait(7)
    game:GetService("ReplicatedStorage").GotStar:FireServer("Level 13")
    task.wait(7)
    game:GetService("ReplicatedStorage").GotStar:FireServer("Level 14")
    task.wait(7)
    game:GetService("ReplicatedStorage").GotStar:FireServer("Level 15")
    task.wait(7)
    game:GetService("ReplicatedStorage").GotStar:FireServer("Level 16")
    task.wait(7)
    game:GetService("ReplicatedStorage").GotStar:FireServer("Level 17")
    task.wait(7)
    game:GetService("ReplicatedStorage").GotStar:FireServer("Level 18")
    task.wait(7)
    game:GetService("ReplicatedStorage").GotStar:FireServer("Level 19")
    task.wait(7)
    game:GetService("ReplicatedStorage").GotStar:FireServer("Level 20")
    task.wait(7)
    game:GetService("ReplicatedStorage").GotStar:FireServer("Level 21")
    task.wait(7)
    game:GetService("ReplicatedStorage").GotStar:FireServer("Level 22")
    task.wait(7)
    game:GetService("ReplicatedStorage").GotStar:FireServer("Level 23")
    task.wait(7)
    game:GetService("ReplicatedStorage").GotStar:FireServer("Level 24")
    task.wait(7)
    game:GetService("ReplicatedStorage").GotStar:FireServer("Level 25")
    task.wait(7)
    game:GetService("ReplicatedStorage").GotStar:FireServer("Level 26")
    task.wait(7)
    game:GetService("ReplicatedStorage").GotStar:FireServer("Level 27")
    task.wait(7)
    game:GetService("ReplicatedStorage").GotStar:FireServer("Level 28")
    task.wait(7)
    game:GetService("ReplicatedStorage").GotStar:FireServer("Level 29")
    task.wait(7)
    game:GetService("ReplicatedStorage").GotStar:FireServer("Level 30")
    print("All stars in current dimension claimed")
end