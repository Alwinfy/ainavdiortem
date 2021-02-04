local swoleTim = {}

speed = 200
tim = {x = 300, y = 200}
text = {x = 100, y = 200, msg = 'Hello world! :D'}

function swoleTim:enter()
    tim.image = love.graphics.newImage('assets/swole-tim.png')
    love.graphics.setNewFont(24)
end

function swoleTim:update(dt)
    local function pressedMove(key, obj, coordinate, speed)
        if love.keyboard.isDown(key) then
            obj[coordinate] = obj[coordinate] + speed * dt
        end
    end

    pressedMove('up', tim, 'y', -speed)
    pressedMove('down', tim, 'y', speed)
    pressedMove('left', tim, 'x', -speed)
    pressedMove('right', tim, 'x', speed)
    pressedMove('w', text, 'y', -speed)
    pressedMove('s', text, 'y', speed)
    pressedMove('a', text, 'x', -speed)
    pressedMove('d', text, 'x', speed)

    if love.mouse.isDown(1) then
        tim.x = love.mouse.getX() - 100
        tim.y = love.mouse.getY() - 100
    end
    if love.mouse.isDown(2) then
        text.x = love.mouse.getX()
        text.y = love.mouse.getY()
    end
end

function swoleTim:draw()
    love.graphics.draw(tim.image, tim.x, tim.y, 0, 0.3, 0.3)
    love.graphics.print(text.msg, text.x, text.y)
end

function swoleTim:keypressed(key)
    text.msg = key .. ' is pressed'
end

function swoleTim:keyreleased(key)
    text.msg = 'Hello :D'
end

function swoleTim:focus(focused)
    if not focused then
        text.msg = 'why u leave me :('
    end
end

function swoleTim:resume()
    text.msg = 'you paused me :('
end

function swoleTim:quit()
    -- This is Linux-only but I'm just experimenting :P
    os.execute('notify-send "swole tim says" "you closed me :("')
end

return swoleTim