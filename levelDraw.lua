w = {}
z = {}
-- this logic was reused from the other scripts; made to fit the needs of this script; by a human
function w.BlockDefinition()

block.ubicationSide = {180,240,300,360,420,480,540,180,240,300,360,420,480,540,180,240,300,360,420,480,540,180,240,300,360,420,480,540,180,240,300,360,420,480,540,180,240,300,360,420,480,540,180,240,300,360,420,480,540,180,240,300,360,420,480,540}
block.ubicationTop = {315,290,265,240,215,190,165,140,0,0,0,0,0,0,265,240,215,265,240,215,265,240,215,265,240,215,265,240,215}

if creatorTools.status == true then
   world:draw()
end

 if level.detect == 1 and menu.screen == 3 then
    for i = 1, blockTotal do
    local existKey = "blockl" .. i .. "exist"
 if _G[existKey] == true then
    if i >= 1 and i <=7 then
    love.graphics.draw(block.sprite,block.ubicationSide[i], block.ubicationTop[1],0,1,1)
    end
     if i >= 8 and i <=14 then
    love.graphics.draw(block.sprite,block.ubicationSide[i], block.ubicationTop[2],0,1,1)
    end
         if i >= 15 and i <=21 then
    love.graphics.draw(block.sprite,block.ubicationSide[i], block.ubicationTop[3],0,1,1)
    end
             if i >= 22 and i <=28 then
    love.graphics.draw(block.sprite,block.ubicationSide[i], block.ubicationTop[4],0,1,1)
    end
                 if i >= 29 and i <=35 then
    love.graphics.draw(block.sprite,block.ubicationSide[i], block.ubicationTop[5],0,1,1)
    end         
          if i >= 36 and i <=42 then
    love.graphics.draw(block.sprite,block.ubicationSide[i], block.ubicationTop[6],0,1,1)
    end
              if i >= 43 and i <=49 then
    love.graphics.draw(block.sprite,block.ubicationSide[i], block.ubicationTop[7],0,1,1)
    end
end
end
end
 if level.detect == 2 and menu.screen == 3 then
    for i = 1, blockTotal do
    local existKey = "blockl" .. i .. "exist"
 if _G[existKey] == true then
    if i >= 1 and i <=7 then
    love.graphics.draw(block.sprite,block.ubicationSide[i], block.ubicationTop[1],0,1,1)
    end
              if i >= 8 and i <=14 then
    love.graphics.draw(block.sprite,block.ubicationSide[i], block.ubicationTop[7],0,1,1)
    end
                  if i >= 15 and i <=17 then
    love.graphics.draw(block.sprite,block.ubicationSide[1], block.ubicationTop[i],0,1,1)
    end                
      if i >= 18 and i <=20 then
    love.graphics.draw(block.sprite,block.ubicationSide[3], block.ubicationTop[i],0,1,1)
    end
          if i >= 21 and i <=23 then
    love.graphics.draw(block.sprite,block.ubicationSide[5], block.ubicationTop[i],0,1,1)
    end
              if i >= 24 and i <=26 then
    love.graphics.draw(block.sprite,block.ubicationSide[7], block.ubicationTop[i],0,1,1)
    end
end
end
end

if level.detect == 3 and menu.screen == 3 then
    for i = 1, blockTotal do
    local existKey = "blockl" .. i .. "exist"
 if _G[existKey] == true then
    if i >= 1 and i <=2 then
    love.graphics.draw(block.sprite,block.ubicationSide[i], block.ubicationTop[1],0,1,1)
    end
    if i >= 3 and i <=5 then
    love.graphics.draw(block.sprite,block.ubicationSide[i], block.ubicationTop[2],0,1,1)
    end
        if i >= 6 and i <=7 then
    love.graphics.draw(block.sprite,block.ubicationSide[i], block.ubicationTop[1],0,1,1)
    end
         if i >= 8 and i <=14 then
    love.graphics.draw(block.sprite,block.ubicationSide[i], block.ubicationTop[3],0,1,1)
    end
             if i >= 15 and i <=16 then
    love.graphics.draw(block.sprite,block.ubicationSide[i], block.ubicationTop[5],0,1,1)
    end
            if i >= 17 and i <=19 then
    love.graphics.draw(block.sprite,block.ubicationSide[i], block.ubicationTop[4],0,1,1)
    end
                if i >= 20 and i <= 21 then
    love.graphics.draw(block.sprite,block.ubicationSide[i], block.ubicationTop[5],0,1,1)
    end
       
end
end
end

love.graphics.setColor(1,1,1,1)
end
return w