local CurrentGameId = game.GameId
local SupportedGames = {
    [994732206]  = "https://raw.githubusercontent.com/dhon234/Bloxfruit/refs/heads/main/Main.lua", -- Blox Fruits
    [7709344486] = "https://raw.githubusercontent.com/Dev-VoltHub/StealBrainrot/refs/heads/main/Volt.lua", -- Steal a Brainrot
    [7326934954] = "https://raw.githubusercontent.com/Dev-VoltHub/99NightsFlorest/refs/heads/main/volt.lua",  -- 99 Nights in the Forest
    [10563114921] = "https://raw.githubusercontent.com/dhon234/StealAEgg/refs/heads/main/Main.lua", -- Steal a Egg
}

for GameId, Script in pairs(SupportedGames) do
    if CurrentGameId == GameId then
        loadstring(game:HttpGet(Script))()
        return
    end
end

game:GetService("Players").LocalPlayer:Kick("Unsupport Game")
