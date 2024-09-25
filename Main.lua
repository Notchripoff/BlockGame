function love.load()
  -- load the game
  game = Game.new()
  game:init()
end

function love.update(dt)
  -- update the game
  game:update(dt)
end

function love.draw()
  -- draw the game
  game:draw()
end
