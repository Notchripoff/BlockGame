Block = {}
Block.__index = Block

function Block.new(x, y, z)
  local self = setmetatable({}, Block)
  self.x = x
  self.y = y
  self.z = z
  self.type = "dirt" -- default block type
  return self
end

function Block:draw()
  -- draw the block as a cube
  love.graphics.setColor(128, 128, 128) -- gray color
  love.graphics.box(self.x, self.y, self.z, 1, 1, 1)
end
