Player = {}
Player.__index = Player

function Player.new()
  local self = setmetatable({}, Player)
  self.x = 0
  self.y = 0
  self.z = 0
  self.speed = 5
  return self
end

function Player:update(dt)
  -- update the player position
  if love.keyboard.isDown("left") then
    self.x = self.x - self.speed * dt
  end
  if love.keyboard.isDown("right") then
    self.x = self.x + self.speed * dt
  end
  if love.keyboard.isDown("up") then
    self.z = self.z - self.speed * dt
  end
  if love.keyboard.isDown("down") then
    self.z = self.z + self.speed * dt
  end
end

function Player:draw()
  -- draw the player as a cube
  love.graphics.setColor(255, 0, 0) -- red color
  love.graphics.box(self.x, self.y, self.z, 1, 1, 1)
end
