local sti = require 'libs.sti.sti'
local Camera = require 'libs.hump.camera'
local bump = require 'libs.bump.bump'
local Settings = require 'playersettings'

local game = {}

local function getPlayer()
    return map.layers.entities.player
end

local function updateEntites(self, dt)
    local player = self.player
    local speed = player.speed
    local goalX = player.x
    local goalY = player.y

    -- Apply gravity
    player.yVelocity = player.yVelocity + player.gravity * dt

    if love.keyboard.isDown('a', 'left') then
        goalX = goalX - speed * dt
    end
    if love.keyboard.isDown('d', 'right') then
        goalX = goalX + speed * dt
    end

    if love.keyboard.isDown('w', 'up') then
        --- From the OSM tutorial
        if -player.yVelocity < player.jumpMaxSpeed and not player.hasReachedMax then
            player.yVelocity = player.yVelocity - player.jumpAcceleration * dt
        elseif math.abs(player.yVelocity) > player.jumpMaxSpeed then
            player.hasReachedMax = true
        end
        
        player.isGrounded = false -- we are no longer in contact with the ground
    end

    goalY = goalY + player.yVelocity * dt

    local actualX, actualY, cols, len = world:move(self.player, goalX, goalY)
    self.player.x, self.player.y = actualX, actualY

    -- Also taken from the OSM tutorial
    -- Loop through those collisions to see if anything important is happening
    for i, coll in ipairs(cols) do
        if coll.other.properties.damaging then
            Gamestate.push(states.dead)
        end
        if coll.touch.y > goalY then  -- We touched below (remember that higher locations have lower y values) our intended target.
            player.hasReachedMax = true -- this scenario does not occur in this demo
            player.isGrounded = false
        elseif coll.normal.y < 0 then
            player.hasReachedMax = false
            player.isGrounded = true
        end
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

    -- Using a global variable cause otherwise it would need a big refactor
    map = sti('assets/tiled/' .. stage .. '.lua', { 'bump' })

    -- Create bump world
    world = bump.newWorld(16)
    map:bump_init(world)

    local layer = map:addCustomLayer('entities', 4)
    for k, object in pairs(map.objects) do
        if object.name == 'player' then
            layer.player = object
        end
    end
    layer.update = updateEntites
    layer.draw = drawEntities
    local player = layer.player
    player.sprite = love.graphics.newImage('assets/entities/full_robot.png')
    for key, val in pairs(Settings) do
        player[key] = val
    end
    world:add(player, player.x, player.y, player.sprite:getWidth(), player.sprite:getHeight())
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