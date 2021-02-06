local sti = require 'libs.sti.sti'
-- local Camera = require 'libs.hump.camera'

local game = {}

function game:enter()
    -- Play music
    music = love.audio.newSource('assets/music/simple_tune_for_game_jam.wav', 'stream')
    music:play()
    music:setLooping(true)
    
    -- Create camera
    -- camera = Camera(0, 0, 1)

    -- Load map
    -- From https://github.com/karai17/Simple-Tiled-Implementation/blob/master/tutorials/01-introduction-to-sti.md
    map = sti('assets/tiled/test2.lua')
    local layer = map:addCustomLayer('Sprites', 4)

    for k, object in pairs(map.objects) do
        if object.name == 'player' then
            player = object
        end
    end

    local sprite = love.graphics.newImage('assets/entities/full_robot.png')
    layer.player = {
        sprite = sprite,
        x = player.x,
        y = player.y,
        ox = sprite:getWidth() / 2,
        oy = sprite:getHeight() / 1.35,
    }

    layer.update = function(self, dt)
        local speed = 96 * dt

        if love.keyboard.isDown('w', 'up') then
            self.player.y = self.player.y - speed
        end

        if love.keyboard.isDown('s', 'down') then
            self.player.y = self.player.y + speed
        end

        if love.keyboard.isDown('a', 'left') then
            self.player.x = self.player.x - speed
        end

        if love.keyboard.isDown('d', 'right') then
            self.player.x = self.player.x + speed
        end
    end

    layer.draw = function(self, dt)
        love.graphics.draw(
            self.player.sprite,
            math.floor(self.player.x),
			math.floor(self.player.y),
			0,
			1,
			1,
			self.player.ox,
			self.player.oy
        )
        -- Temporarily draw a point at our location so we know
		-- that our sprite is offset properly
        love.graphics.setPointSize(5)
        love.graphics.points(math.floor(self.player.x), math.floor(self.player.y))
    end
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

    if love.keyboard.isDown('j') then
        camera:move(100 * dt, 0)
    end
    if love.keyboard.isDown('l') then
        camera:move(-100 * dt, 0)
    end
    if love.keyboard.isDown('i') then
        camera:move(0, 100 * dt)
    end
    if love.keyboard.isDown('k') then
        camera:move(0, -100 * dt)
    end
end

function game:draw()
    -- camera:attach()

    -- Scale world
	local scale = 2
	local screen_width  = love.graphics.getWidth()  / scale
	local screen_height = love.graphics.getHeight() / scale

	-- Translate world so that player is always centred
	local player = map.layers["Sprites"].player
	local tx = math.floor(player.x - screen_width  / 2)
	local ty = math.floor(player.y - screen_height / 2)

	-- Transform world
	love.graphics.scale(scale)
	love.graphics.translate(-tx, -ty)


    map:draw(
    --    -camera.x, -camera.y, camera.scale, camera.scale
    )

    -- camera:detach()
end

return game