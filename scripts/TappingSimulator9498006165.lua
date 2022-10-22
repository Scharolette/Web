local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
-- Script made by Scharolette#6473 https://discord.gg/ReFfRQHhdt

-- Global variables
getgenv().autoClicking = false
getgenv().autoRebirthing = false
getgenv().rebirthAmount = 1
getgenv().islandUnlock = true

-- UI
local Window = OrionLib:MakeWindow({Name = "Tapping Simulator | Scharolette#6473", HidePremium = true, SaveConfig = false,IntroEnabled = false, ConfigFolder = "Scharolette"})

local Tab = Window:MakeTab({
    Name = "Farms",
    Icon = "",
    PremiumOnly = false
})

Tab:AddToggle({
	Name = "Auto Tap",
	Callback = function(bool)
	Default = false
	getgenv().AutoTap = bool
	
	if bool == true then
	    AutoTap()
	end
end})

Tab:AddToggle({
	Name = "Auto Rebirth",
	Callback = function(bool)
	Default = false
	getgenv().AutoRebirth = bool
	
	if bool == true then
	    AutoRebirth()
    end
end})

Tab:AddTextbox({
    Name = "Rebirth Amount",
    Default = "",
    TextDisappear = true,
    Callback = function(Value)
        getgenv().rebirthAmount = Value
    end      
})

Tab:AddButton({
	Name = "Unlock all Islands",
	Callback = function(bool)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-163.98446655273438, 987.5964965820312, -403.33941650390625) * CFrame.Angles(-0, 0, -0)
    task.wait(0.5) -- Forest
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-179.51564025878906, 1524.6309814453125, -682.4987182617188) * CFrame.Angles(3.1415927410125732, -0, -3.1415927410125732)
    task.wait(0.5) -- Flower
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-264.35888671875, 2123.06298828125, -694.6613159179688) * CFrame.Angles(3.1415927410125732, -0, -3.1415927410125732)
    task.wait(0.5) -- Swamp
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-201.77197265625, 2944.481689453125, -470.40875244140625) * CFrame.Angles(0, 1.5707963705062866, 0)
    task.wait(0.5) -- Snow
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-166.28515625, 4235.38916015625, -779.1531372070312) * CFrame.Angles(0, 1.5707963705062866, 0)
    task.wait(0.5) -- Desert
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-276.2012634277344, 5425.62158203125, -480.58778076171875) * CFrame.Angles(0, 1.5707963705062866, 0)
    task.wait(0.5) -- Death
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-140.3450927734375, 6881.630859375, -495.68212890625) * CFrame.Angles(0, 1.5707963705062866, 0)
    task.wait(0.5) -- Beach
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-243.2586669921875, 8376.5166015625, -483.8897705078125) * CFrame.Angles(0, 1.5707963705062866, 0)
    task.wait(0.5) -- Mines
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-253.30348205566406, 11262.8818359375, -237.8885955810547) * CFrame.Angles(0, 1.5707963705062866, 0)
    task.wait(0.5) -- Cloud
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-511.0211181640625, 13812.0322265625, -543.2418212890625) * CFrame.Angles(-0, -1.5707963705062866, 0)
    task.wait(0.5) -- Coral
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-408.697509765625, 17180.538671875, -552.0464477539062) * CFrame.Angles(0, 1.5707963705062866, 0)
    task.wait(0.5) -- Darkheart
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1137.614013671875, 170.30052185058594, -2859.725341796875) * CFrame.Angles(-0, -1.5707963705062866, 0)
    task.wait(0.5) -- Flamelands World
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1280.5958251953125, 2193.828125, -2885.144287109375) * CFrame.Angles(0, 1.5707963705062866, 0)
    task.wait(0.5) -- Molten
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1401.12939453125, 5240.41943359375, -2953.919677734375) * CFrame.Angles(0, 1.5707963705062866, 0)
    task.wait(0.5) -- Blue Magma
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1319.7027587890625, 7662.02490234375, -2958.0576171875) * CFrame.Angles(0, 1.5707963705062866, 0)
    task.wait(0.5) -- Purple Magma
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1403.5440673828125, 10404.09765625, -2903.138427734375) * CFrame.Angles(-3.1415927410125732, 0.7853636741638184, -3.1415927410125732)
    task.wait(0.5) -- Yellow Magma
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1426.2127685546875, 13353.703125, -2900.90087890625) * CFrame.Angles(-3.1415927410125732, 0.7853636741638184, -3.1415927410125732)
    task.wait(0.5) -- Red Magma
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1415.12451171875, 169.6440887451172, -5604.470703125) * CFrame.Angles(0, 1.5707963705062866, 0)
    task.wait(0.5) -- Fantasy World
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1205.412353515625, 2037.730224609375, -5585.404296875) * CFrame.Angles(-0, -1.5707963705062866, 0)
    task.wait(0.5) -- Mystic Mire
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1216.9140625, 5124.0302734375, -5632.39990234375) * CFrame.Angles(-0, -1.5707963705062866, 0)
    task.wait(0.5) -- Castle
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1179.677490234375, 8660.728515625, -5587.80517578125) * CFrame.Angles(-0, -1.5707963705062866, 0)
    task.wait(0.5) -- Candy
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1227.37744140625, 12284.5283203125, -5571.904296875) * CFrame.Angles(-0, -1.5707963705062866, 0)
    task.wait(0.5) -- Festival
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1189.677734375, 16327.54296875, -5569.50634765625) * CFrame.Angles(-0, -1.5707963705062866, 0)
    task.wait(0.5) -- Japanese
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1172.019287109375, 147.04409790039062, -7965.728515625) * CFrame.Angles(-0, -1.5707963705062866, 0)
    task.wait(0.5) -- Space World
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1289.5777587890625, 1874.828125, -7965.40625) * CFrame.Angles(-0, -1.5707963705062866, 0)
    task.wait(0.5) -- Frost Space
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1291.85, 4951, -7961.14) * CFrame.Angles(-0, -1.5707963705062866, 0)
    task.wait(0.5) -- Toxic Planet (Small issues)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1347.3277587890625, 9598.8359375, -7961.65625) * CFrame.Angles(-0, -1.5707963705062866, 0)
    task.wait(0.5) -- Asteroid Space
end})


function AutoTap()
    while getgenv().AutoTap == true do
        task.wait()
        game:GetService("ReplicatedStorage").Events.Tap:FireServer()

        task.wait()
        game:GetService("ReplicatedStorage").Events.Tap:FireServer(5)
    end
end

function AutoRebirth()
    while getgenv().AutoRebirth == true do
        task.wait(.25)

        game:GetService("ReplicatedStorage").Events.Rebirth:FireServer(getgenv().rebirthAmount)

    end
end