w = {}
  ttl = 1
function w.menu(dt)
 

  if love.mouse.isDown(1) and menu.screen == 1 and mPosX >= 390 and mPosX <= 470 and mPosY >=450 and mPosY <= 550 then
menu.screen = 2
sfx.click:play()
  end
if love.mouse.isDown(1) and menu.screen == 1 and mPosX >= 740 and mPosX <=780 and mPosY >=540 and mPosY <= 580 then
  menu.screen = 4
  menu.backDone = 0
  sfx.click:play()
end
if love.mouse.isDown(1) and menu.screen == 2 and mPosX >= 740 and mPosX <=780 and mPosY >=540 and mPosY <= 580 then
  menu.screen = 4
  menu.backDone = 0
  sfx.click:play()
end
  if love.mouse.isDown(1) and menu.screen == 4 and mPosX >= 30 and mPosX <=80 and mPosY >=540 and mPosY <= 580 then
  menu.screen = 1
  menu.settingsDone = 0
  sfx.click:play()
end
 if menu.screen == 4 and button.backDone == 0 then -- menu script -------------------------------------
  button.backDone = 1
end
if menu.screen == 1 and button.settingsDone == 0 then
button.settingsDone = 1
end

if menu.screen == 2 and menu.created == 0 then
menu.created = 1
end

if love.mouse.isDown(1) and menu.screen == 2 and mPosX >= 740 and mPosX <=780 and mPosY >= 480 and mPosY <= 510 then
menu.screen = 1
sfx.click:play()
end
if love.mouse.isDown(1) and menu.screen == 1 and mPosX >= 20 and mPosX <=60 and mPosY >= 540 and mPosY <= 580 and ttl <= 0 then
love.event.quit()
end

-- ROW 1st
if love.keyboard.isDown("1") and level.unlocked >= 1 and menu.screen == 2 or level.unlocked >= 1 and love.mouse.isDown(1) and menu.screen == 2 and mPosX >= 80 and mPosX <=190 and mPosY >=30 and mPosY <= 90 then
  menu.screen = 3
gen.levelGen(1)
level.latest = 1
sfx.click:play()
end
if love.keyboard.isDown("2") and level.unlocked >= 2 and menu.screen == 2 or level.unlocked >= 2 and love.mouse.isDown(1) and menu.screen == 2 and mPosX >= 210 and mPosX <=320 and mPosY >=30 and mPosY <= 90 then
  menu.screen = 3
gen.levelGen(2)
level.latest = 2
sfx.click:play()
end
if love.keyboard.isDown("3") and level.unlocked >= 3 and menu.screen == 2 or level.unlocked >= 3 and love.mouse.isDown(1) and menu.screen == 2 and mPosX >= 340 and mPosX <=440 and mPosY >=30 and mPosY <= 90 then
  menu.screen = 3
gen.levelGen(3)
level.latest = 3
sfx.click:play()
end
if love.keyboard.isDown("4") and level.unlocked >= 4 and menu.screen == 2 or level.unlocked >= 4 and love.mouse.isDown(1) and menu.screen == 2 and mPosX >= 470 and mPosX <=560 and mPosY >=30 and mPosY <= 90 then
  menu.screen = 3
gen.levelGen(4)
level.latest = 4
sfx.click:play()
end
if love.keyboard.isDown("5") and level.unlocked >= 5 and menu.screen == 2 or level.unlocked >= 5 and love.mouse.isDown(1) and menu.screen == 2 and mPosX >= 600 and mPosX <=680 and mPosY >=30 and mPosY <= 90 then
  menu.screen = 3
gen.levelGen(5)
level.latest = 5
sfx.click:play()
end

--ROW 2nd
if love.keyboard.isDown("6") and level.unlocked >= 6 and menu.screen == 2 or level.unlocked >= 6 and love.mouse.isDown(1) and menu.screen == 2 and mPosX >= 80 and mPosX <=190 and mPosY >=110 and mPosY <= 170 then
  menu.screen = 3
gen.levelGen(6)
level.latest = 6
sfx.click:play()
end
if love.keyboard.isDown("7") and level.unlocked >= 7 and menu.screen == 2 or level.unlocked >= 7 and love.mouse.isDown(1) and menu.screen == 2 and mPosX >= 210 and mPosX <=320 and mPosY >=110 and mPosY <= 170 then
  menu.screen = 3
gen.levelGen(7)
level.latest = 7
sfx.click:play()
end
if love.keyboard.isDown("8") and level.unlocked >= 8 and menu.screen == 2 or level.unlocked >= 8 and love.mouse.isDown(1) and menu.screen == 2 and mPosX >= 340 and mPosX <=440 and mPosY >=110 and mPosY <= 170 then
  menu.screen = 3
gen.levelGen(8)
level.latest = 8
sfx.click:play()
end
if love.keyboard.isDown("9") and level.unlocked >= 9 and menu.screen == 2 or level.unlocked >= 9 and love.mouse.isDown(1) and menu.screen == 2 and mPosX >= 470 and mPosX <=560 and mPosY >=110 and mPosY <= 170 then
  menu.screen = 3
gen.levelGen(9)
level.latest = 9
sfx.click:play()
end
if love.keyboard.isDown("0") and level.unlocked >= 10 and menu.screen == 2 or level.unlocked >= 10 and love.mouse.isDown(1) and menu.screen == 2 and mPosX >= 600 and mPosX <=680 and mPosY >=110 and mPosY <= 170 then
  menu.screen = 3
gen.levelGen(10)
level.latest = 10
sfx.click:play()
end

--ROW 3rd
if love.keyboard.isDown("q") and level.unlocked >= 11 and menu.screen == 2 or level.unlocked >= 11 and love.mouse.isDown(1) and menu.screen == 2 and mPosX >= 80 and mPosX <=190 and mPosY >= 190 and mPosY <= 250 then
  menu.screen = 3
gen.levelGen(11)
level.latest = 11
sfx.click:play()
end
if love.keyboard.isDown("w") and level.unlocked >= 12 and menu.screen == 2 or level.unlocked >= 12 and love.mouse.isDown(1) and menu.screen == 2 and mPosX >= 210 and mPosX <=320 and mPosY >=190 and mPosY <= 250 then
  menu.screen = 3
gen.levelGen(12)
level.latest = 12
sfx.click:play()
end
if love.keyboard.isDown("e") and level.unlocked >= 13 and menu.screen == 2 or level.unlocked >= 13 and love.mouse.isDown(1) and menu.screen == 2 and mPosX >= 340 and mPosX <=440 and mPosY >=190 and mPosY <= 250 then
  menu.screen = 3
gen.levelGen(13)
level.latest = 13
sfx.click:play()
end
if love.keyboard.isDown("r") and level.unlocked >= 14 and menu.screen == 2 or level.unlocked >= 14 and love.mouse.isDown(1) and menu.screen == 2 and mPosX >= 470 and mPosX <=560 and mPosY >=190 and mPosY <= 250 then
  menu.screen = 3
gen.levelGen(9)
level.latest = 9
sfx.click:play()
end
if love.keyboard.isDown("t") and level.unlocked >= 15 and menu.screen == 2 or level.unlocked >= 15 and love.mouse.isDown(1) and menu.screen == 2 and mPosX >= 600 and mPosX <=680 and mPosY >=190 and mPosY <= 250 then
  menu.screen = 3
gen.levelGen(10)
level.latest = 10
sfx.click:play()
end



if destroyer.allowdisable == 1 then -- escape key script ---------------------------------------------
    menu.screen = 2
    menu.created = 0
    blockDestroyed = 0
    sfx.select:play()
    score = 0
    if ball.created == 1 then
    ball.hitbox:destroy()
    setter.hitbox:destroy()
    setter.isDone = false
    end
    igclicked = 0
  tba = 1.3
  ball.created = 0
  clicked = false
end


if not love.keyboard.isDown("escape") and menu.screen == 1 then
tbx = 2
end
if not love.keyboard.isDown("escape") and menu.screen == 2 then
tbx = 0.001
end

if not love.keyboard.isDown("escape") and menu.screen == 4 then
tbx = 3
end

if love.keyboard.isDown("c") and menu.screen == 2 then
menu.screen = 4
sfx.select:play()
end

if love.keyboard.isDown("c") and menu.screen == 1 then
menu.screen = 4
sfx.select:play()
end


if love.keyboard.isDown("escape") and menu.screen == 1 and tbx == 2 then
love.event.quit()
end

if love.keyboard.isDown("escape") and menu.screen == 2 and tbx == 0.001 then
menu.screen = 1
sfx.select:play()
end

if love.keyboard.isDown("escape") and menu.screen == 4 and tbx == 3 then
menu.screen = 1
sfx.select:play()
end

if menu.screen == 1 and love.keyboard.isDown("space") then
menu.screen = 2
sfx.select:play()
end
if creatorTools.status == true and menu.screen == 3 then -- creator tools ----------------------------------
level.detect = 1000

lvl = 1000
love.graphics.draw(block.sprite,mPosX, mPosY,0,1,1)


end

if love.keyboard.isDown("lshift") and creatorTools.regularizer >= 0 and menu.screen == 3 and creatorTools.mode == 1 then -- level building script, originally human made, but was remade by AI (gemini); i hate doing this; but it was requiring 900+ lines of code to work
    local colWidth = 60
    local rowHeight = 25
    local startX = 180
    local startY = 140

    for j = 0, 6 do
        for i = 0, 6 do
            local x = startX + (j * colWidth)
            local y = startY + (i * rowHeight)

            if mPosX >= x and mPosX < x + colWidth and mPosY >= y and mPosY < y + rowHeight then
                creatorTools.blockID = creatorTools.blockID + 1
                creatorTools.spriteID = creatorTools.spriteID + 1
                creatorTools.regularizer = creatorTools.regularizer - dt
                
                block.hitboxupn[creatorTools.blockID] = world:newRectangleCollider(x, y - 5, colWidth, 10)
                block.hitboxupn[creatorTools.blockID]:setCollisionClass("blockup")
                block.hitboxupn[creatorTools.blockID]:setType("static")
                
                block.hitboxdownn[creatorTools.blockID] = world:newRectangleCollider(x, y + 5, colWidth, 10)
                block.hitboxdownn[creatorTools.blockID]:setCollisionClass("blockdown")
                block.hitboxdownn[creatorTools.blockID]:setType("static")
decorX[creatorTools.spriteID] = x
decorY[creatorTools.spriteID] = y
                
                
                print("block.hitboxupn" .. creatorTools.blockID .. " = world:newRectangleCollider(" .. x .. ", " .. y .. "-5, 60, 10)")
                print("block.hitboxupn" .. creatorTools.blockID .. ":setCollisionClass('blockup')")
                print("block.hitboxupn" .. creatorTools.blockID .. ":setType('static')")
                print("block.hitboxdownn" .. creatorTools.blockID .. " = world:newRectangleCollider(" .. x .. ", " .. y .. "+5, 60, 10)")
                print("block.hitboxdownn" .. creatorTools.blockID .. ":setCollisionClass('blockdown')")
                print("block.hitboxdownn" .. creatorTools.blockID .. ":setType('static')")
                
                break 
            end
        end
    end
end

if love.keyboard.isDown("lshift") and creatorTools.regularizer >= 0 and menu.screen == 3 and creatorTools.mode == 2 then -- level building script, originally human made, but was remade by AI (gemini); i hate doing this; but it was requiring 900+ lines of code to work
    local clWidth = 60
    local rwHeight = 25
    local stX = 180
    local stY = 140

    for o = 0, 6 do
        for r = 0, 6 do
            local xX = stX + (o * clWidth)
            local yY = stY + (r * rwHeight)

            if mPosX >= xX and mPosX < xX + clWidth and mPosY >= yY and mPosY < yY + rwHeight then
                creatorTools.spriteID = creatorTools.spriteID + 1
                creatorTools.regularizer = creatorTools.regularizer - dt

decorX[creatorTools.spriteID] = xX
decorY[creatorTools.spriteID] = yY
                
                
                print("if i == " .. creatorTools.spriteID .. " then")
                print("love.graphics.draw(block.sprite,"..xX.."," ..yY..",0,1,1)")
                print("end")

                
                break 
            end
        end
    end
end



  if creatorTools.regularizer <= 0 and not love.keyboard.isDown("lshift") then
    creatorTools.regularizer = 0.002
  end


if menu.screen == 1 then
 ttl = ttl - dt
end
if menu.screen == 2 or menu.screen == 3 or menu.screen == 4 then
  ttl = 1
end
if ttl <= 0 then
  ttl = 0
end
if menu.screen == 3 and tba >= 1 then
tba = tba-dt
end
if tba <= 1 then
  tba = 0
end
end
return w
