Game = {}
Game.__index = Game

function Game.new()
  local self = setmetatable({}, Game)
  self.blocks = {} -- store all blocks in the game
  self.player = Player.new() -- create a new player
  return self
end

function Game:init()
  -- initialize the game world
  for x = 0, 10 do
    for y = 0, 10 do
      for z = 0, 10 do
        local block = Block.new(x, y, z)
        table.insert(self.blocks, block)
      end
    end
  end
end

function Game:update(dt)
  -- update the game state
  self.player:update(dt)
end

function Game:draw()
  -- draw the game world
  for _, block in pairs(self.blocks) do
    block:draw()
  end
  self.player:draw()
end
