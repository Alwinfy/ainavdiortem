local dead = {}

-- Adapted from the example in the documentation (https://hump.readthedocs.io/en/latest/gamestate.html) --

function dead:enter(from)
    self.from = from
    if music ~= nil then
        music:stop()
    end
end

-- Copy-pasted from pause
function dead:draw()
    local W, H = love.graphics.getWidth(), love.graphics.getHeight()
    self.from:draw()
    love.graphics.setColor(0, 0, 0, 0.66)
    love.graphics.rectangle('fill', 0,0, W, H)
    love.graphics.setColor(255,255,255)
    love.graphics.printf('YOU DIED\nRespawn not implemented', 0, H/2, W, 'center')
end

return dead