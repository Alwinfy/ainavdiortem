local menu = {}

function menu:draw()
    love.graphics.print('Hello, world! This is supposed to be a menu screen. Press Enter to continue.', 10, 10)
end

function menu:keyreleased(key)
    if key == 'return' then
        Gamestate.switch(states.game)
    end
end

return menu