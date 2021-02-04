local pause = {}

-- Adapted from the example in the documentation (https://hump.readthedocs.io/en/latest/gamestate.html) --

function pause:enter(from)
    self.from = from
end

function pause:draw()
    local W, H = love.graphics.getWidth(), love.graphics.getHeight()
    -- draw previous screen
    self.from:draw()
    -- overlay with pause message
    love.graphics.setColor(0, 0, 0, 0.66)
    love.graphics.rectangle('fill', 0,0, W, H)
    love.graphics.setColor(255,255,255)
    love.graphics.printf('PAUSED\nPress Esc to resume', 0, H/2, W, 'center')
end

return pause