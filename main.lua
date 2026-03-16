local LuaSteam = require "luasteam"

local t = 0
function love.load()
    LuaSteam.Init()
end

function love.update(dt)
    t = t + dt
    LuaSteam.RunCallbacks()
end

function love.draw()
    love.graphics.print("Running " .. tostring(t), 0, 0)
end

function love.quit()
	LuaSteam.Shutdown()
end

function love.keypressed(key)
    if key == "space" then
        LuaSteam.UserStats.SetAchievement("ACH_WIN_ONE_GAME")
        LuaSteam.UserStats.StoreStats()
    end
end