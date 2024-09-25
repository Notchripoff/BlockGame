function generateTerrain(width, height, depth)
  -- generate a random terrain
  local terrain = {}
  for x = 0, width do
    for y = 0, height do
      for z = 0, depth do
        local blockType = math.random(1, 2) -- 1 = dirt, 2 = stone
        local block = Block.new(x, y, z)
        block.type = blockType == 1 and "dirt" or "stone"
        table.insert(terrain, block)
      end
    end
  end
  return terrain
end
