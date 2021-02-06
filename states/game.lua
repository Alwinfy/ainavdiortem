local game = {}

function game:enter()
    -- Play music
    music = love.audio.newSource('assets/simple_tune_for_game_jam.wav', 'stream')
    music:play()
    music:setLooping(true)
end

function game:resume()
    -- Resume the music when we resume
    music:play()
end

function game:draw()
    love.graphics.print('There is no game.', 10, 10)
end

return game