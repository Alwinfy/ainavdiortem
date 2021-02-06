local sti = require('libs.sti.sti')

local game = {}

function game:enter()
    -- Play music
    music = love.audio.newSource('assets/music/simple_tune_for_game_jam.wav', 'stream')
    music:play()
    music:setLooping(true)
    map = sti('assets/tiled/untitled.lua')
end

function game:leave()
    music:stop()
end

function game:resume()
    -- Resume the music when we resume
    music:play()
end

function game:update(dt)
    map:update(dt)
end

function game:draw()
    love.graphics.print('There is no game.', 10, 10)
    map:draw()
end

return game