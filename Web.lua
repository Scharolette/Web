-- All scripts are created by me and if given substantial help, users will be credited within the source.

local supportedGames = {
    [4188447592] = function() -- Cat Simulator
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Scharolette/Web/main/Source/CatSimulator4188447592.lua"))()
    end,
    [6149941304] = function() -- Chicken Life
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Scharolette/Web/main/Source/ChickenLife6149941304.lua"))()
    end,
    [10675042838] = function() -- Lemonade Tycoon
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Scharolette/Web/main/Source/LemonadeTycoon10675042838.lua"))()
    end,
    [9285238704] = function() -- Race Clicker
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Scharolette/Web/main/Source/RaceClicker9285238704.lua"))()
    end,
    [4183364845] = function() -- Speed Run 
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Scharolette/Web/main/Source/SpeedRun4183364845.lua"))()
    end,
    [9498006165] = function() -- Tapping Simulator
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Scharolette/Web/main/Source/TappingSimulator9498006165.lua"))()
    end,
    [10681346822] = function() -- Jump Game
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Scharolette/Web/main/Source/JumpGame10681346822.lua"))()
    end,
    [9992339729] = function() -- Longest Answer Wins
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Scharolette/Web/main/Source/LongestAnswerWins9992339729.lua"))()
    end
}

if not game:IsLoaded() then
    game.Loaded:Wait()
end

if supportedGames[game.PlaceId] then
    supportedGames[game.PlaceId]()
end
