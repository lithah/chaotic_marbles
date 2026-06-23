w = {}
z = {}
-- this logic was reused from the other scripts; made to fit the needs of this script; by a human
function w.BlockDefinition()

block.ubicationSide = {180,240,300,360,420,480,540,180,240,300,360,420,480,540,180,240,300,360,420,480,540,180,240,300,360,420,480,540,180,240,300,360,420,480,540,180,240,300,360,420,480,540,180,240,300,360,420,480,540,180,240,300,360,420,480,540}
block.ubicationTop = {315,290,265,240,215,190,165,140,0,0,0,0,0,0,265,240,215,265,240,215,265,240,215,265,240,215,265,240,215}
block.ubicationTop2 = {315-30,290-30,265-30,240-30,215-30,190-30,165-30,140-30,0,0,0,0,0,0,265,240,215,265,240,215,265,240,215,265,240,215,265,240,215}



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

if level.detect == 4 and menu.screen == 3 then
     for i = 1, blockTotal do
    local existKey = "blockl" .. i .. "exist"
 if _G[existKey] == true then
    if i >= 1 and i <=7 then
    love.graphics.draw(block.sprite,block.ubicationSide[i], block.ubicationTop2[1],0,1,1)
    end
     if i >= 8 and i <=14 then
    love.graphics.draw(block.sprite,block.ubicationSide[i], block.ubicationTop2[7],0,1,1)
    end
         if i == 15 then
    love.graphics.draw(block.sprite,block.ubicationSide[2], block.ubicationTop2[2],0,1,1)
         end
           if i == 16 then
   love.graphics.draw(block.sprite,block.ubicationSide[4], block.ubicationTop2[2],0,1,1)
           end
                  if i == 17 then
     love.graphics.draw(block.sprite,block.ubicationSide[6], block.ubicationTop2[2],0,1,1)
                  end
       if i == 18 then
     love.graphics.draw(block.sprite,block.ubicationSide[2], block.ubicationTop2[4],0,1,1)
       end
       if i == 19 then
   love.graphics.draw(block.sprite,block.ubicationSide[4], block.ubicationTop2[4],0,1,1)
       end
       if i == 20 then
     love.graphics.draw(block.sprite,block.ubicationSide[6], block.ubicationTop2[4],0,1,1)
      end
       if i == 21 then
     love.graphics.draw(block.sprite,block.ubicationSide[2], block.ubicationTop2[6],0,1,1)
       end
              if i == 22 then
   love.graphics.draw(block.sprite,block.ubicationSide[4], block.ubicationTop2[6],0,1,1)
              end 
                     if i == 23 then
     love.graphics.draw(block.sprite,block.ubicationSide[6], block.ubicationTop2[6],0,1,1)
    end
    if i == 24 then
    love.graphics.draw(block.sprite,block.ubicationSide[1], block.ubicationTop2[3],0,1,1)
    end
    if i == 25 then
   love.graphics.draw(block.sprite,block.ubicationSide[3], block.ubicationTop2[3],0,1,1)
    end
    if i == 26 then
     love.graphics.draw(block.sprite,block.ubicationSide[5], block.ubicationTop2[3],0,1,1)
    end
    if i == 27 then
 love.graphics.draw(block.sprite,block.ubicationSide[7], block.ubicationTop2[3],0,1,1)
    end
if i == 28 then
     love.graphics.draw(block.sprite,block.ubicationSide[1], block.ubicationTop2[5],0,1,1)
end
if i == 29 then
   love.graphics.draw(block.sprite,block.ubicationSide[3], block.ubicationTop2[5],0,1,1)
end
if i == 30 then
     love.graphics.draw(block.sprite,block.ubicationSide[5], block.ubicationTop2[5],0,1,1)
end
if i == 31 then
 love.graphics.draw(block.sprite,block.ubicationSide[7], block.ubicationTop2[5],0,1,1)
end

    end
end
end
if level.detect == 5 and menu.screen == 3 then -- define the level to be drawn
     for i = 1, blockTotal do --this defines how many blocks there will be drawn
    local existKey = "blockl" .. i .. "exist"
if _G[existKey] == true then -- this puts the sprites on a table with existKey, so they are able to be destroyed
   --copy the console's output here:
   if i == 1 then
love.graphics.draw(block.sprite,180,140,0,1,1)
end
if i == 2 then
love.graphics.draw(block.sprite,540,140,0,1,1)
end
if i == 3 then
love.graphics.draw(block.sprite,540,290,0,1,1)
end
if i == 4 then
love.graphics.draw(block.sprite,180,290,0,1,1)
end
if i == 5 then
love.graphics.draw(block.sprite,180,215,0,1,1)
end
if i == 6 then
love.graphics.draw(block.sprite,240,215,0,1,1)
end
if i == 7 then
love.graphics.draw(block.sprite,300,215,0,1,1)
end
if i == 8 then
love.graphics.draw(block.sprite,420,215,0,1,1)
end
if i == 9 then
love.graphics.draw(block.sprite,480,215,0,1,1)
end
if i == 10 then
love.graphics.draw(block.sprite,540,215,0,1,1)
end
if i == 11 then
love.graphics.draw(block.sprite,300,190,0,1,1)
end
if i == 12 then
love.graphics.draw(block.sprite,300,165,0,1,1)
end
if i == 13 then
love.graphics.draw(block.sprite,360,140,0,1,1)
end
if i == 14 then
love.graphics.draw(block.sprite,420,165,0,1,1)
end
if i == 15 then
love.graphics.draw(block.sprite,420,190,0,1,1)
end
if i == 16 then
love.graphics.draw(block.sprite,420,240,0,1,1)
end
if i == 17 then
love.graphics.draw(block.sprite,420,265,0,1,1)
end
if i == 18 then
love.graphics.draw(block.sprite,360,290,0,1,1)
end
if i == 19 then
love.graphics.draw(block.sprite,300,265,0,1,1)
end
if i == 20 then
love.graphics.draw(block.sprite,300,240,0,1,1)
end

end
end
end

if level.detect == 6 and menu.screen == 3 then -- define the level to be drawn
     for i = 1, blockTotal do --this defines how many blocks there will be drawn
    local existKey = "blockl" .. i .. "exist"
if _G[existKey] == true then -- this puts the sprites on a table with existKey, so they are able to be destroyed
   --copy the console's output here:
 

if i == 1 then
love.graphics.draw(block.sprite,180,140,0,1,1)
end
if i == 2 then
love.graphics.draw(block.sprite,180,165,0,1,1)
end
if i == 3 then
love.graphics.draw(block.sprite,180,190,0,1,1)
end
if i == 4 then
love.graphics.draw(block.sprite,180,215,0,1,1)
end
if i == 5 then
love.graphics.draw(block.sprite,180,240,0,1,1)
end
if i == 6 then
love.graphics.draw(block.sprite,180,265,0,1,1)
end
if i == 7 then
love.graphics.draw(block.sprite,180,290,0,1,1)
end
if i == 8 then
love.graphics.draw(block.sprite,240,290,0,1,1)
end
if i == 9 then
love.graphics.draw(block.sprite,300,265,0,1,1)
end
if i == 10 then
love.graphics.draw(block.sprite,300,240,0,1,1)
end
if i == 11 then
love.graphics.draw(block.sprite,360,215,0,1,1)
end
if i == 12 then
love.graphics.draw(block.sprite,420,190,0,1,1)
end
if i == 13 then
love.graphics.draw(block.sprite,420,165,0,1,1)
end
if i == 14 then
love.graphics.draw(block.sprite,480,140,0,1,1)
end
if i == 15 then
love.graphics.draw(block.sprite,540,140,0,1,1)
end
if i == 16 then
love.graphics.draw(block.sprite,540,165,0,1,1)
end
if i == 17 then
love.graphics.draw(block.sprite,540,190,0,1,1)
end
if i == 18 then
love.graphics.draw(block.sprite,540,215,0,1,1)
end
if i == 19 then
love.graphics.draw(block.sprite,540,240,0,1,1)
end
if i == 20 then
love.graphics.draw(block.sprite,540,265,0,1,1)
end
if i == 21 then
love.graphics.draw(block.sprite,540,290,0,1,1)
end
if i == 22 then
love.graphics.draw(block.sprite,480,265,0,1,1)
end
if i == 23 then
love.graphics.draw(block.sprite,420,290,0,1,1)
end
if i == 24 then
love.graphics.draw(block.sprite,240,165,0,1,1)
end
if i == 25 then
love.graphics.draw(block.sprite,300,140,0,1,1)
end

end
end
end

if level.detect == 7 and menu.screen == 3 then -- define the level to be drawn
     for i = 1, blockTotal do --this defines how many blocks there will be drawn
    local existKey = "blockl" .. i .. "exist"
if _G[existKey] == true then -- this puts the sprites on a table with existKey, so they are able to be destroyed
   --copy the console's output here:

   if i == 1 then
love.graphics.draw(block.sprite,180,140,0,1,1)
end
if i == 2 then
love.graphics.draw(block.sprite,180,165,0,1,1)
end
if i == 3 then
love.graphics.draw(block.sprite,180,190,0,1,1)
end
if i == 4 then
love.graphics.draw(block.sprite,540,140,0,1,1)
end
if i == 5 then
love.graphics.draw(block.sprite,540,165,0,1,1)
end
if i == 6 then
love.graphics.draw(block.sprite,540,190,0,1,1)
end
if i == 7 then
love.graphics.draw(block.sprite,180,240,0,1,1)
end
if i == 8 then
love.graphics.draw(block.sprite,240,240,0,1,1)
end
if i == 9 then
love.graphics.draw(block.sprite,300,240,0,1,1)
end
if i == 10 then
love.graphics.draw(block.sprite,360,240,0,1,1)
end
if i == 11 then
love.graphics.draw(block.sprite,420,240,0,1,1)
end
if i == 12 then
love.graphics.draw(block.sprite,480,240,0,1,1)
end
if i == 13 then
love.graphics.draw(block.sprite,540,240,0,1,1)
end
if i == 14 then
love.graphics.draw(block.sprite,180,290,0,1,1)
end
if i == 15 then
love.graphics.draw(block.sprite,240,265,0,1,1)
end
if i == 16 then
love.graphics.draw(block.sprite,300,290,0,1,1)
end
if i == 17 then
love.graphics.draw(block.sprite,360,265,0,1,1)
end
if i == 18 then
love.graphics.draw(block.sprite,420,290,0,1,1)
end
if i == 19 then
love.graphics.draw(block.sprite,480,265,0,1,1)
end
if i == 20 then
love.graphics.draw(block.sprite,540,290,0,1,1)
end
if i == 21 then
love.graphics.draw(block.sprite,300,190,0,1,1)
end
if i == 22 then
love.graphics.draw(block.sprite,360,165,0,1,1)
end
if i == 23 then
love.graphics.draw(block.sprite,420,190,0,1,1)
end
end
end
end

love.graphics.setColor(1,1,1,1)-- put this after the end chain
end
return w



--if level.detect == ¿? and menu.screen == 3 then -- define the level to be drawn
--     for i = 1, blockTotal do --this defines how many blocks there will be drawn
--    local existKey = "blockl" .. i .. "exist"
--if _G[existKey] == true then -- this puts them on a table with the existKey, so they are able to be destroyed
   -- copy the console's output here:

--end
--end
--end







