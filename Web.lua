-- All scripts are created by me and if given substantial help, users will be credited within the source.

local supportedGames = {
    [4188447592] = function() -- Cat Simulator
        print("1")
        loadstring("https://raw.githubusercontent.com/Scharolette/Web/main/Source/CatSimulator4188447592.lua")
    end,
    [6149941304] = function() -- Chicken Life
        print("2")
        loadstring("https://raw.githubusercontent.com/Scharolette/Web/main/Source/ChickenLife6149941304.lua")
    end,
    [10675042838] = function() -- Lemonade Tycoon
        print("3")
        loadstring("https://raw.githubusercontent.com/Scharolette/Web/main/Source/LemonadeTycoon10675042838.lua")
    end,
    [9285238704] = function() -- Race Clicker
        print("4")
        loadstring("https://raw.githubusercontent.com/Scharolette/Web/main/Source/RaceClicker9285238704.lua")
    end,
    [4183364845] = function() -- Speed Run 4
        print("5")
        loadstring("https://raw.githubusercontent.com/Scharolette/Web/main/Source/SpeedRun4183364845.lua")
    end,
    [9498006165] = function() -- Tapping Simulator
        print("6")
        loadstring("https://raw.githubusercontent.com/Scharolette/Web/main/Source/TappingSimulator9498006165.lua")
    end
}

if not game:IsLoaded() then
    print("7")
    game.Loaded:Wait()
end

if supportedGames[game.GameId] then
    print("8")
    supportedGames[game.GameId]()
end
