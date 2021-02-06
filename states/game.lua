local sti = require 'libs.sti.sti'
local Camera = require 'libs.hump.camera'

local game = {}

local function getPlayer()
    return map.layers.entities.player
end

local function updateEntites(self, dt)
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

local function drawEntities(self, dt)
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
end

function game:enter()
    -- Play music
    music = love.audio.newSource('assets/music/simple_tune_for_game_jam.wav', 'stream')
    music:play()
    music:setLooping(true)

    -- Create camera
    camera = Camera(0, 0, 4)

    -- Load map
    -- From https://github.com/karai17/Simple-Tiled-Implementation/blob/master/tutorials/01-introduction-to-sti.md
    map = sti('assets/tiled/stage1.lua')

    local layer = map:addCustomLayer('entities', 4)
    for k, object in pairs(map.objects) do
        if object.name == 'player' then
            layer.player = object
        end
    end
    layer.player.sprite = love.graphics.newImage('assets/entities/full_robot.png')
    layer.update = updateEntites
    layer.draw = drawEntities
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
    local player = getPlayer()
    camera:lookAt(player.x, player.y)
end

function game:draw()
    camera:attach()

    map:draw(
        -camera.x + love.graphics.getWidth() / (2 * camera.scale) - 16,
        -camera.y + love.graphics.getHeight() / (2 * camera.scale),
        camera.scale, camera.scale
    )

    camera:detach()
end

return game