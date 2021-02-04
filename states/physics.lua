local physics = {}

function physics:enter()
  meterSize = 64
  love.physics.setMeter(meterSize) --height of 1 meter in pixels for physics purposes
  world = love.physics.newWorld(0, 9.81*meterSize, true)

  ground = {}
  ground.body = love.physics.newBody(world, 700, 900, "static")
  ground.shape = love.physics.newRectangleShape(1400, 200)
  ground.fixture = love.physics.newFixture(ground.body, ground.shape)

  player = {}
  player.body = love.physics.newBody(world, 500, 500, "dynamic")
  player.shape = love.physics.newRectangleShape(100, 100)
  player.fixture = love.physics.newFixture(player.body, player.shape)

  idk = {}
  idk.body = love.physics.newBody(world, 400, 400, "static")
  idk.shape = love.physics.newRectangleShape(100, 100)
  idk.fixture = love.physics.newFixture(idk.body, idk.shape)
end

function physics:update(dt)
  world:update(dt)

  x, y = player.body:getLinearVelocity()
  if love.keyboard.isDown("right") or love.keyboard.isDown("left") then
    if love.keyboard.isDown("right") then
      player.body:setLinearVelocity(400, y)
    end
    if love.keyboard.isDown("left") then
      player.body:setLinearVelocity(-400, y)
    end
  else
    player.body:setLinearVelocity(0, y)
  end

  if love.keyboard.isDown("up") then
    player.body:applyForce(0, -10000)
  end

end

function physics:draw()
  love.graphics.setColor(0, 255, 0)
  love.graphics.polygon("fill", ground.body:getWorldPoints(
                         ground.shape:getPoints()))

  love.graphics.polygon("fill", idk.body:getWorldPoints(
                          idk.shape:getPoints()))
  
  love.graphics.setColor(255, 0, 0)
  love.graphics.polygon("fill", player.body:getWorldPoints(
                         player.shape:getPoints()))
end

return physics