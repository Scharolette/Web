local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
-- Script made by Scharolette#6473 https://discord.gg/ReFfRQHhdt

-- PS: I decline to create a kill all for one of my childhood games, please don't ask. If you truly desire one, create it yourself.

-- Todo:
-- Legitimatize, or whatever. Add checks for when auto gem farming if a user is at the flag, don't teleport. Stuff like that
-- Add auto pets

-- Hotfix:
-- Boss was bugging out

-- Changelog:
-- Cleaned up the UI because if you don't know what these mean you won't care about the script anyway
-- Added Auto boss fight
-- Fixed Auto Coins stopping because of a missing coin
-- Fixed selling causing flag to not get captured
-- Fixed death causing toggles to stop working until retoggled

-- Variable Init -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
local user = game:GetService("Players").LocalPlayer
local character = user.Character.HumanoidRootPart
local strength = user.PlayerGui.Bin.UIs.CurrencyUi.Strength.Num.ContentText
local originalPosition = character.CFrame
local capturingFlag = false
local FightingBoss = false

-- UI Window -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
local Window = OrionLib:MakeWindow({Name = "Cat Simulator | Scharolette#6473", HidePremium = true, SaveConfig = false, IntroEnabled = false, ConfigFolder = "Scharolette"})

-- First Tab -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
local Tab = Window:MakeTab({
    Name = "Autofarms",
    Icon = "",
    PremiumOnly = false
})

Tab:AddToggle({ -- Auto claw toggle
	Name = "Claw",
	Callback = function(bool)
	Default = false
	getgenv().autoClaw = bool
	
	if bool == true then
	    AutoClaw()
	end
end})

function AutoClaw()
    while getgenv().autoClaw do
        task.wait(0.1)
        if user.Character:FindFirstChild("HumanoidRootPart") then
            for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
                if v.Name == user.Name then
                    for i,v in pairs(v:GetChildren()) do
                        if v.ClassName == "Tool" then
                            v:Activate()
                        end
                    end
                end
            end
        end
    end
end

Tab:AddToggle({ -- Auto sell toggle
	Name = "Sell",
	Callback = function(bool)
	Default = false
	getgenv().autoSell = bool
	
	if bool == true then
	    AutoSell()
	end
end})

function AutoSell() -- Need to remove the limitation on distance from the selling area or teleport whenever yarn full
    while getgenv().autoSell do
        task.wait(0.25)
        if user.Character:FindFirstChild("HumanoidRootPart") then
            if capturingFlag == false then
                originalPosition = user.Character.HumanoidRootPart.CFrame
                strength = user.PlayerGui.Bin.UIs.CurrencyUi.Strength.Num.ContentText
                strengthSplit = string.split(strength, "/")
                if strengthSplit[1] == strengthSplit[2] then
                    game:GetService("ReplicatedStorage").RemoteEvent:FireServer("GoToButton", "Sell")
                    game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer("SellAll")
                    user.Character.HumanoidRootPart.CFrame = originalPosition
                end
            end
        end
    end
end

Tab:AddToggle({ -- Auto buy toggle
	Name = "Buy",
	Callback = function(bool)
	Default = false
	getgenv().autoBuy = bool
	
	if bool == true then
	    AutoBuy()
	end
end})

function AutoBuy() -- Still needs checked for bugs
    while getgenv().autoBuy do
        task.wait(15)
        if user.Character:FindFirstChild("HumanoidRootPart") then
            userCoins = user.PlayerGui.Bin.UIs.CurrencyUi.Fish.Num.ContentText
            userCoinsSplit = string.split(userCoins, " ")
            userCoinsFormat = userCoinsSplit[2]
            if userCoinsFormat == "k" then
                userCoins = userCoinsSplit[1] * 1000
            elseif userCoinsFormat == "M" then
                userCoins = userCoinsSplit[1] * 1000000
            elseif userCoinsFormat == "B" then
                userCoins = userCoinsSplit[1] * 1000000000
            elseif userCoinsFormat == "T" then
                userCoins = userCoinsSplit[1] * 1000000000000
            elseif userCoinsFormat == "Qd" then
                userCoins = userCoinsSplit[1] * 1000000000000000
            elseif userCoinsFormat == "QT" then
                userCoins = userCoinsSplit[1] * 1000000000000000000
            else
                userCoins = userCoins * 1
            end
            if userCoinsFormat == "QT" then
                if userCoins > 1000000000000000000 then ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
                    local args = {
                        [1] = "BuyItem",
                        [2] = "Tiger Overlord",
                        [3] = "Classes"
                    }
                    
                    game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
                end
            elseif userCoinsFormat == "Qd" then
                if userCoins > 700000000000000000 then ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
                    local args = {
                        [1] = "BuyItem",
                        [2] = "Tiger General",
                        [3] = "Classes"
                    }
                    
                    game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
                    
                elseif userCoins > 504000000000000000 then ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
                    local args = {
                        [1] = "BuyItem",
                        [2] = "Galaxy Green Claw",
                        [3] = "Claws"
                    }
                    
                    game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
                    local args = {
                        [1] = "BuyItem",
                        [2] = "Cyan Tied Yarn",
                        [3] = "Yarns"
                    }
                    
                    game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
                    
                elseif userCoins > 300000000000000000 then ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
                    local args = {
                        [1] = "BuyItem",
                        [2] = "Tiger Colonel",
                        [3] = "Classes"
                    }
                    
                    game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
                    
                elseif userCoins > 95000000000000000 then ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
                    local args = {
                        [1] = "BuyItem",
                        [2] = "Light Pink Claw",
                        [3] = "Claws"
                    }
                    
                    game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
                    
                elseif userCoins > 30000000000000000 then ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
                    local args = {
                        [1] = "BuyItem",
                        [2] = "Light Purple Claw",
                        [3] = "Claws"
                    }
                    
                    game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
                    
                elseif userCoins > 26000000000000000 then ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
                    local args = {
                        [1] = "BuyItem",
                        [2] = "Light Lime Claw",
                        [3] = "Claws"
                    }
                    
                    game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
                    local args = {
                        [1] = "BuyItem",
                        [2] = "Brown Cross Yarn",
                        [3] = "Yarns"
                    }
                    
                    game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
                    
                elseif userCoins > 10000000000000000 then ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
                    local args = {
                        [1] = "BuyItem",
                        [2] = "Tiger Captain",
                        [3] = "Classes"
                    }
                    
                    game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
                    
                elseif userCoins > 2600000000000000 then ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
                    local args = {
                        [1] = "BuyItem",
                        [2] = "Light Salmon Claw",
                        [3] = "Claws"
                    }
                    
                    game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
                    local args = {
                        [1] = "BuyItem",
                        [2] = "Lime Cross Yarn",
                        [3] = "Yarns"
                    }
                    
                    game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
                    
                elseif userCoins > 1000000000000000 then ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
                    local args = {
                        [1] = "BuyItem",
                        [2] = "Tiger Lieutenant",
                        [3] = "Classes"
                    }
                    
                    game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
                end
            elseif userCoinsFormat == "T" then
                if userCoins > 309000000000000 then ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
                    local args = {
                        [1] = "BuyItem",
                        [2] = "Dizzy Black Claw",
                        [3] = "Claws"
                    }
                    
                    game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
                    local args = {
                        [1] = "BuyItem",
                        [2] = "Mint Cross Yarn",
                        [3] = "Yarns"
                    }
                    
                    game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
                    
                elseif userCoins > 100000000000000 then ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
                    local args = {
                        [1] = "BuyItem",
                        [2] = "Tiger Master",
                        [3] = "Classes"
                    }
                    
                    game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
                    
                elseif userCoins > 90000000000000 then ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
                    local args = {
                        [1] = "BuyItem",
                        [2] = "Tiger Sergeant",
                        [3] = "Classes"
                    }
                    
                    game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
                    
                elseif userCoins > 50000000000000 then ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
                    local args = {
                        [1] = "BuyItem",
                        [2] = "Tiger Private",
                        [3] = "Classes"
                    }
                    
                    game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
                    
                elseif userCoins > 31000000000000 then ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
                    local args = {
                        [1] = "BuyItem",
                        [2] = "Dizzy Green Claw",
                        [3] = "Claws"
                    }
                    
                    game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
                    local args = {
                        [1] = "BuyItem",
                        [2] = "Pink Cross Yarn",
                        [3] = "Yarns"
                    }
                    
                    game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
                    
                elseif userCoins > 10000000000000 then ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
                    local args = {
                        [1] = "BuyItem",
                        [2] = "Tiger Recruiter",
                        [3] = "Classes"
                    }
                    
                    game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
                    
                elseif userCoins > 7000000000000 then ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
                    local args = {
                        [1] = "BuyItem",
                        [2] = "Cat Chief",
                        [3] = "Classes"
                    }
                    
                    game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
                    
                elseif userCoins > 5100000000000 then ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
                    local args = {
                        [1] = "BuyItem",
                        [2] = "Fire White Claw",
                        [3] = "Claws"
                    }
                    
                    game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
                    local args = {
                        [1] = "BuyItem",
                        [2] = "Green Cross Yarn",
                        [3] = "Yarns"
                    }
                    
                    game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
                    
                elseif userCoins > 2000000000000 then ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
                    local args = {
                        [1] = "BuyItem",
                        [2] = "Cat General",
                        [3] = "Classes"
                    }
                    
                    game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
                
                end
            elseif userCoinsFormat == "B" then
                if userCoins > 761000000000 then ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
                    local args = {
                        [1] = "BuyItem",
                        [2] = "Fire Purple Claw",
                        [3] = "Claws"
                    }
                    
                    game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
                    local args = {
                        [1] = "BuyItem",
                        [2] = "White Cross Yarn",
                        [3] = "Yarns"
                    }
                    
                    game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
                    
                elseif userCoins > 700000000000 then ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
                    local args = {
                        [1] = "BuyItem",
                        [2] = "Cat Colonel",
                        [3] = "Classes"
                    }
                    
                    game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
                    
                elseif userCoins > 103000000000 then ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
                    local args = {
                        [1] = "BuyItem",
                        [2] = "Fire Green Claw",
                        [3] = "Claws"
                    }
                    
                    game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
                    local args = {
                        [1] = "BuyItem",
                        [2] = "Salmon Stripe Yarn",
                        [3] = "Yarns"
                    }
                    
                    game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
                    
                elseif userCoins > 30000000000 then ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
                    local args = {
                        [1] = "BuyItem",
                        [2] = "Cat Major",
                        [3] = "Classes"
                    }
                    
                    game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
                    
                elseif userCoins > 10500000000 then ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
                    local args = {
                        [1] = "BuyItem",
                        [2] = "Fire Red Claw",
                        [3] = "Claws"
                    }
                    
                    game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
                    local args = {
                        [1] = "BuyItem",
                        [2] = "Storm Blue Stripe Yarn",
                        [3] = "Yarns"
                    }
                    
                    game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
                
                elseif userCoins > 9000000000 then ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
                    local args = {
                        [1] = "BuyItem",
                        [2] = "Cat Captain",
                        [3] = "Classes"
                    }
                    
                    game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
                    
                elseif userCoins > 2000000000 then ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
                    local args = {
                        [1] = "BuyItem",
                        [2] = "Cat Lieutenant",
                        [3] = "Classes"
                    }
                    
                    game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
                    
                elseif userCoins > 1050000000 then ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
                    local args = {
                        [1] = "BuyItem",
                        [2] = "Sparkle Purple Claw",
                        [3] = "Claws"
                    }
                    
                    game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
                    local args = {
                        [1] = "BuyItem",
                        [2] = "Black Stripe Yarn",
                        [3] = "Yarns"
                    }
                    
                    game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
                end
            elseif userCoinsFormat == "M" then
                if userCoins > 900000000 then ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
                    local args = {
                        [1] = "BuyItem",
                        [2] = "Cat Commander",
                        [3] = "Classes"
                    }
                    
                    game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
                    
                elseif userCoins > 300000000 then ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
                    local args = {
                        [1] = "BuyItem",
                        [2] = "Cat Master",
                        [3] = "Classes"
                    }
                    
                    game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
                    
                elseif userCoins > 151000000 then ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
                    local args = {
                        [1] = "BuyItem",
                        [2] = "Sparkle Green Claw",
                        [3] = "Claws"
                    }
                    
                    game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
                    local args = {
                        [1] = "BuyItem",
                        [2] = "Pink Stripe Yarn",
                        [3] = "Yarns"
                    }
                    
                    game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
                    
                elseif userCoins > 150000000 then ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
                    local args = {
                        [1] = "BuyItem",
                        [2] = "Cat Staff",
                        [3] = "Classes"
                    }
                    
                    game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
                    
                elseif userCoins > 90000000 then ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
                    local args = {
                        [1] = "BuyItem",
                        [2] = "Cat Sergeant",
                        [3] = "Classes"
                    }
                    
                    game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
                    
                elseif userCoins > 51000000 then ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
                    local args = {
                        [1] = "BuyItem",
                        [2] = "Sparkle Yellow Claw",
                        [3] = "Claws"
                    }
                    
                    game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
                    local args = {
                        [1] = "BuyItem",
                        [2] = "Blue Stripe Yarn",
                        [3] = "Yarns"
                    }
                    
                    game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
                    
                elseif userCoins > 30000000 then ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
                    local args = {
                        [1] = "BuyItem",
                        [2] = "Kitty Specialist",
                        [3] = "Classes"
                    }
                    
                    game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
                    
                elseif userCoins > 12000000 then ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
                    local args = {
                        [1] = "BuyItem",
                        [2] = "Kitty 1st Class",
                        [3] = "Classes"
                    }
                    
                    game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
                    
                elseif userCoins > 6130000 then ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
                    local args = {
                        [1] = "BuyItem",
                        [2] = "Dark Grey Claw",
                        [3] = "Claws"
                    }
                    
                    game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
                    local args = {
                        [1] = "BuyItem",
                        [2] = "White Stripe Yarn",
                        [3] = "Yarns"
                    }
                    
                    game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
                    
                elseif userCoins > 5000000 then ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
                    local args = {
                        [1] = "BuyItem",
                        [2] = "Kitty Private",
                        [3] = "Classes"
                    }
                    
                    game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
                    
                elseif userCoins > 2000000 then ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
                    local args = {
                        [1] = "BuyItem",
                        [2] = "Kitty Novice",
                        [3] = "Classes"
                    }
                    
                    game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
                end
            elseif userCoinsFormat == "k" then    
                if userCoins > 375000 then ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
                    local args = {
                        [1] = "BuyItem",
                        [2] = "Dark Cyan Claw",
                        [3] = "Claws"
                    }
                    
                    game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
                    local args = {
                        [1] = "BuyItem",
                        [2] = "Terra Yarn",
                        [3] = "Yarns"
                    }
                    
                    game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
                    
                elseif userCoins > 78000 then ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
                    local args = {
                        [1] = "BuyItem",
                        [2] = "Dark Yellow Claw",
                        [3] = "Claws"
                    }
                    
                    game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
                    local args = {
                        [1] = "BuyItem",
                        [2] = "Grey Yarn",
                        [3] = "Yarns"
                    }
                    
                    game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
                end
            else
                if userCoins > 900 then ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
                    local args = {
                        [1] = "BuyItem",
                        [2] = "Blue Claw",
                        [3] = "Claws"
                    }
                    
                    game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
                    local args = {
                        [1] = "BuyItem",
                        [2] = "Blue Yarn",
                        [3] = "Yarns"
                    }
                    
                    game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
                    
                elseif userCoins > 100 then ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
                    local args = {
                        [1] = "BuyItem",
                        [2] = "Orange Claw",
                        [3] = "Claws"
                    }
                    
                    game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
                    local args = {
                        [1] = "BuyItem",
                        [2] = "Orange Yarn",
                        [3] = "Yarns"
                    }
                    
                    game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
                end
                
            end
        end
    end
end

Tab:AddToggle({ -- Auto laser toggle
	Name = "Laser",
	Callback = function(bool)
	Default = false
	getgenv().autoLaser = bool
	
	if bool == true then
	    AutoLaser()
	end
end})

function AutoLaser() -- Needs to stop collecting after you're first on the leaderboard
    while getgenv().autoLaser do
        task.wait()
        if user.Character:FindFirstChild("HumanoidRootPart") then
            local laser = game:GetService("Workspace").Buildings.Lamps.Laser.Dot

            pcall(function()firetouchinterest(user.Character.HumanoidRootPart, laser, 0) end)
            task.wait(.1)
            pcall(function()firetouchinterest(user.Character.HumanoidRootPart, laser, 1) end) -- Necessary
        end
    end
end

Tab:AddToggle({ -- Auto fight boss toggle
    Name = "Boss",
	Callback = function(bool)
	Default = false
	getgenv().bossFight = bool
	
	if bool == true then
	    BossFight()
	end
end})

function BossFight()
    while getgenv().bossFight do
        task.wait()
        if user.Character:FindFirstChild("HumanoidRootPart") then
            if capturing == false then
                FightingBoss = true
                for i,v in pairs(user.Character:GetChildren()) do
                    if v.ClassName == "Tool" then
                        if string.match(v.Name, "Boss") == "Boss" then
                            currentClaw = "Boss"
                        else
                            currentClaw = "Regular"
                        end
                    end
                end
                
                bossAlive = string.match(game:GetService("Workspace").BossTimer.BillboardGui.TextLabel.ContentText, "Time left:")
                if bossAlive ~= nil then
                    if currentClaw == "Regular" then
                        firetouchinterest(user.Character.HumanoidRootPart, game:GetService("Workspace").BossTeleporter.TeleporterA.Base, 0)
                        task.wait(.1)
                        user.Character.HumanoidRootPart.CFrame = CFrame.new(0.135487, -175.802, 30.391)
                    else
                        for i,v in pairs(game:GetService("Workspace").Boss:GetChildren()) do
                            boss = v.HumanoidRootPart
                        end
                        user.Character.Humanoid:MoveTo(boss.Position)
                    end
                else
                    if currentClaw == "Boss" then
                        firetouchinterest(user.Character.HumanoidRootPart, game:GetService("Workspace").BossTeleporter.TeleporterB.Base, 0)
                    end
                end
            end
        else
            task.wait(10)
        end
        if getgenv().bossFight == false then
            FightingBoss = false
        end
    end
end

Tab:AddToggle({ -- Auto collect coins toggle
	Name = "Coins",
	Callback = function(bool)
	Default = false
	getgenv().autoCoins = bool
	
	if bool == true then
	    AutoCoins()
	end
end})

function AutoCoins() -- Needs worked on
    while getgenv().autoCoins do
        task.wait()
        if user.Character:FindFirstChild("HumanoidRootPart") then
            for i,v in pairs(game:GetService("Workspace").FishCoins:GetChildren()) do
                if v:FindFirstChild("TouchInterest") then
                    pcall(function()firetouchinterest(user.Character.HumanoidRootPart, v, 0) end)
                    task.wait()
                end
                task.wait()
                if getgenv().autoCoins == false then break end
            end
        end
    end
end

Tab:AddToggle({ -- Automatically does gem collection tasks
	Name = "Gems",
	Callback = function(bool)
	Default = false
	getgenv().gemFarm = bool
	
	if bool == true then
	    GemFarm()
	end
end})

function GemFarm()
    while getgenv().gemFarm do
        task.wait()
        if user.Character:FindFirstChild("HumanoidRootPart") then
            if game:GetService("Workspace").CapturePoints.CaptureTower1.Configuration.Pole.Leading.ImageLabel.TextLabel.ContentText ~= user.Character.Name then
                capturingFlag = true
                RedFlagTeleport()
                task.wait(12.5)
                capturingFlag = false
            elseif game:GetService("Workspace").CapturePoints.CaptureTower2.Configuration.Pole.Leading.ImageLabel.TextLabel.ContentText ~= user.Character.Name then
                capturingFlag = true
                BlueFlagTeleport()
                task.wait(12.5)
                capturingFlag = false
            elseif game:GetService("Workspace").CapturePoints.CaptureTower3.Configuration.Pole.Leading.ImageLabel.TextLabel.ContentText ~= user.Character.Name then
                capturingFlag = true
                OrangeFlagTeleport()
                task.wait(12.5)
                capturingFlag = false
            elseif game:GetService("Workspace").CapturePoints.CaptureTower4.Configuration.Pole.Leading.ImageLabel.TextLabel.ContentText ~= user.Character.Name then
                capturingFlag = true
                GreenFlagTeleport()
                task.wait(12.5)
                capturingFlag = false
            elseif game:GetService("Workspace").CapturePoints.CaptureTower5.Configuration.Pole.Leading.ImageLabel.TextLabel.ContentText ~= user.Character.Name then
                capturingFlag = true
                PurpleFlagTeleport()
                task.wait(12.5)
                capturingFlag = false
            else
                KOTHTeleport()
                task.wait(12.5)
            end
            -- Create an if statement that checks if there is someone on the hill, if not then teleport
            
        end
    end
end

Tab:AddButton({ -- debug button
    Name = "Open Shop",
    Callback = function(bool)
    OpenShop()
end})

function OpenShop()
    firetouchinterest(character, game:GetService("Workspace").Buttons.Shop, 0)
end

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Second Tab
local Tab2 = Window:MakeTab({
    Name = "Capture",
    Icon = "",
    PremiumOnly = false
})

Tab2:AddButton({
    Name = "Teleport to KOTH",
    Callback = function(bool)
    KOTHTeleport()
end})

Tab2:AddButton({
    Name = "Teleport to Red Flag",
    Callback = function(bool)
    RedFlagTeleport()
end})

Tab2:AddButton({
    Name = "Teleport to Blue Flag",
    Callback = function(bool)
    BlueFlagTeleport()
end})

Tab2:AddButton({
    Name = "Teleport to Orange Flag",
    Callback = function(bool)
    OrangeFlagTeleport()
end})

Tab2:AddButton({
    Name = "Teleport to Green Flag",
    Callback = function(bool)
    GreenFlagTeleport()
end})

Tab2:AddButton({
    Name = "Teleport to Purple Flag",
    Callback = function(bool)
    PurpleFlagTeleport()
end})

function KOTHTeleport()
    character.CFrame = CFrame.new(123.903, 50.6966, 56.5996)
end

function RedFlagTeleport()
    character = user.Character.HumanoidRootPart
    if game:GetService("Workspace").CapturePoints.CaptureTower1.Configuration.Pole.Leading.ImageLabel.TextLabel.ContentText ~= user.Character.Name then
        character.CFrame = CFrame.new(111.951, 32.7497, 224.298)
    end
end

function BlueFlagTeleport()
    character = user.Character.HumanoidRootPart
    if game:GetService("Workspace").CapturePoints.CaptureTower2.Configuration.Pole.Leading.ImageLabel.TextLabel.ContentText ~= user.Character.Name then
        character.CFrame = CFrame.new(-35.1985, 27.2895, 232.189)
    end
end

function OrangeFlagTeleport()
    character = user.Character.HumanoidRootPart
    if game:GetService("Workspace").CapturePoints.CaptureTower3.Configuration.Pole.Leading.ImageLabel.TextLabel.ContentText ~= user.Character.Name then
        character.CFrame = CFrame.new(-159.925, 0.496287, 171.701)
    end
end

function GreenFlagTeleport()
    character = user.Character.HumanoidRootPart
    if game:GetService("Workspace").CapturePoints.CaptureTower4.Configuration.Pole.Leading.ImageLabel.TextLabel.ContentText ~= user.Character.Name then
        character.CFrame = CFrame.new(143.227, 52.697, -111.139)
    end    
end

function PurpleFlagTeleport()
    character = user.Character.HumanoidRootPart
    if game:GetService("Workspace").CapturePoints.CaptureTower5.Configuration.Pole.Leading.ImageLabel.TextLabel.ContentText ~= user.Character.Name then
        character.CFrame = CFrame.new(-170.223, 45.6973, -105.74)
    end
end

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Third Tab
local Tab3 = Window:MakeTab({
    Name = "Eggs",
    Icon = "",
    PremiumOnly = false
})

Tab3:AddButton({
    Name = "Purchase Egg 1 (500 Gems)",
    Callback = function(bool)
    PurchaseEgg1()
end})

Tab3:AddButton({
    Name = "Purchase Egg 2 (3k Gems)",
    Callback = function(bool)
    PurchaseEgg2()
end})

Tab3:AddButton({
    Name = "Purchase Egg 3 (25k Gems)",
    Callback = function(bool)
    PurchaseEgg3()
end})

Tab3:AddButton({
    Name = "Purchase Egg 4 (100k Gems)",
    Callback = function(bool)
    PurchaseEgg4()
end})

Tab3:AddButton({
    Name = "Purchase Egg 5 (250k Gems)",
    Callback = function(bool)
    PurchaseEgg5()
end})

Tab3:AddButton({
    Name = "Purchase Egg 6 (1m) Gems",
    Callback = function(bool)
    PurchaseEgg6()
end})

function PurchaseEgg1()
    local args = {
        [1] = "BuyEgg",
        [2] = "Normal",
        [3] = 1
    }

    game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
end

function PurchaseEgg2()
    local args = {
        [1] = "BuyEgg",
        [2] = "Earth",
        [3] = 1
    }

    game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
end

function PurchaseEgg3()
    local args = {
        [1] = "BuyEgg",
        [2] = "Playful",
        [3] = 1
    }

    game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
end

function PurchaseEgg4()
    local args = {
        [1] = "BuyEgg",
        [2] = "Fire",
        [3] = 1
    }

    game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
end

function PurchaseEgg5()
    local args = {
        [1] = "BuyEgg",
        [2] = "Trident",
        [3] = 1
    }

    game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
end

function PurchaseEgg6()
    local args = {
        [1] = "BuyEgg",
        [2] = "Gem",
        [3] = 1
    }

    game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
end

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
