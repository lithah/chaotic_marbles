    anim8 = require "lib/anim8"
    wf = require "lib/windfield"
    bouncer = require "levelBallbounce"
    gen = require "levelGen"
    destroy = require "levelBlockdestroyer"
    UI = require "menuScript"
    UIdraw = require "menuDraw"
    blockcolocator = require "levelDraw"
    bufflogic = require "levelPowerup"

      math.randomseed(os.time())

      function love.conf()
  t.window.title = "Chaotic Marbles" 
  t.console = true
end

function love.load()
      world = wf.newWorld(100,100, true)
    world:addCollisionClass("ball")
    world:addCollisionClass("button", {ignores = {"ball"}})
    world:addCollisionClass("setter", {ignores = {"ball"}})
    world:addCollisionClass("walltop")
    world:addCollisionClass("wallsideA")
    world:addCollisionClass("wallsideB")
    world:addCollisionClass("blockup")
    world:addCollisionClass("blockdown")
    world:addCollisionClass("paddle")
    world:addCollisionClass("destroyer", {ignores = {"ball","paddle"}})
    world:addCollisionClass("powerups", {ignores = {"ball"}})
    world:addCollisionClass("laser", {ignores = {"ball","paddle","powerups","setter"}})

love.graphics.setDefaultFilter("nearest", "nearest") 
 
music = {}
music.selection = math.random(1,2)

menu = {}
menu.screen = 1
  menu.sprite1 = love.graphics.newImage('images/menu1.png')
 menu.sprite1:setFilter("nearest","nearest")
menu.sprite2 = love.graphics.newImage('images/menu2.png')
 menu.sprite2:setFilter("nearest","nearest")
 menu.settings = love.graphics.newImage('images/smenu.png')
 menu.settings:setFilter("nearest","nearest")

button = {}

music.one = love.audio.newSource('music/Megalopolis_Relaxing_Teknoaxe.mp3', "stream")
music.two = love.audio.newSource('music/Cruising_the_Night_Sky.mp3', "stream")
if music.selection == 1 then
music.one:play()
elseif music.selection == 2 then
  music.two:play()
end

border = {}
border.hitboxup = world:newRectangleCollider(0,-10,800,20)
 border.hitboxdown = world:newRectangleCollider(0, 600, 800,10)
 border.hitboxleft = world:newRectangleCollider(-10, 0, 10,800)
 border.hitboxright = world:newRectangleCollider(800, 0, 10,800)



 border.hitboxup:setType("static")
   border.hitboxup:setCollisionClass("walltop")
 border.hitboxdown:setType("static")
 border.hitboxleft:setType("static")
   border.hitboxleft:setCollisionClass("wallsideA")
 border.hitboxright:setType("static")
   border.hitboxright:setCollisionClass("wallsideB")


   text = {}
text.default = love.graphics.newFont("fonts/PixelifySans.ttf",30)
love.graphics.setFont(text.default) 

ball = {}
 ball.created = 0
 ball.sprite = love.graphics.newImage('images/ball.png')
 ball.posX = 150
 ball.posY = 150
  




setter = {}
setter.isDone = false
setter.sprite = ball.sprite

block = {}
   block.hitboxupn = {}
block.hitboxdownn = {} 
clicked = false

bg = {}
bg.one = love.graphics.newImage('images/bg1.png')
bg.one:setFilter("nearest","nearest")
bg.two = love.graphics.newImage('images/bg2.png')
  bg.selection = math.random(1,2)


block.created = false

paddle = {}
paddle.generated = 0


sfx = {}
sfx.select = love.audio.newSource('sounds/select.wav', "static")
sfx.dead = love.audio.newSource('sounds/dead.wav', "static")
sfx.paddlehit = love.audio.newSource('sounds/paddleHit.mp3', "static")
sfx.click = love.audio.newSource('sounds/click.wav', "static")
sfx.win = love.audio.newSource('sounds/win.wav', "static")
sfx.melt = love.audio.newSource('sounds/melt.wav', "static")
sfx.expand = love.audio.newSource('sounds/expand.wav', "static")
sfx.contract = love.audio.newSource('sounds/contract.wav', "static")
sfx.laser = love.audio.newSource('sounds/laser.wav', "static")


powerups = {}
powerups.chance = 0

speed = {}
speed = 100
stage = {}
stage.ammount = 35

lives = 3
bounce = 0 -- 0 down, 1 up

MovementR = 1
MovementL = 0

blockDestroyed = 0
score = 0
tba = 1.3 -- Time before Action; made to prevent the game from autostarting when selected; its 1:48; and i
-- hope to have this done before 2:30am (status:i don't remember; but im pretty sure it wasn't done lol)
acb = 0 -- After collision bounce; to prevent the ball from penetrating the stucture in every hit
-- to use it; detect when too much blocks has been broken without colliding with the top or the sides
-- this has been done yet, im way to lazy to delete this, and it was 2:18 AM
savedShowTimer = 4

menu.created = 0
block.selection = math.random(1,4)
igclicked = 0
isPaused = false
paddle.moveable = "mouse"
pdp = false
pdpa = false
pdpb = false
button.settingsDone = 0
button.backDone = 0
button.back = love.graphics.newImage('images/backbutton.png')
button.play = love.graphics.newImage('images/playbutton.png')

sprites = {}
sprites.settings = love.graphics.newImage('images/settings.png')
sprites.powerups = love.graphics.newImage('images/powerups.png')
sprites.laser = love.graphics.newImage('images/laser.png')
sprites.paddle = love.graphics.newImage('images/paddle.png')
sprites.paddleEnlarge = love.graphics.newImage('images/enlarge.png')
sprites.unlockedButton = love.graphics.newImage('images/unlockedButton.png')
sprites.statbar = love.graphics.newImage('images/statbar.png')
sprites.frame = love.graphics.newImage('images/cTframe.png')


level = {}
 level.detect = 0
level.unlocked = 1
level.latest = 1

settings = {}
pmstatus = 0
pmtimer = .01
blockEscape = 0
destroyer = {}
destroyer.created = 0
creatorTools = {}
creatorTools.status = false
creatorTools.msg = "false"
creatorTools.regularizer = 0.002
creatorTools.blockID = 0
creatorTools.spriteID = 0
creatorTools.mode = 1

decorX = {}
decorY = {}


btbdX = 0 --bout' to be drawn X
-- this, while using creator tools decorating mode, defines the position of the blocks you see
btbdY = 0 --bout' to be drawn Y

ctm = .002 -- Creator tools mode regularizer; does the same as the following (this is funny on certain countries)
ctu = .002 -- Creator tools unlock; prevents spamming of the key; a workaround used all round this 
--game because i haven't figured another way to do it lol.
msd = .002 -- Music and Sound Definer; prevents spamming of the key; a workaround used all round this 
--game because i haven't figured another way to do it lol.
lip = .002 -- Laser Is Pressed; prevents spamming of the key; a workaround used all round this 
--game because i haven't figured another way to do it lol.

mim = false --Music is muted
powerups.value = 0
powerups.counter = 0
powerups.exist = false
powerups.selection = 0
powerups.melt = false
powerups.enlarge = false
pwm = 3 -- powerup Melt duration
pwe = 10 -- powerup Enlarge duration
pwl = 5 -- powerup Laser duration
pwluv = false
tbd = 1
tbx = 0.001
laser = {}
loadGame()
autosave = 20
sdt = 5 --save deletion timer
end






function love.update(dt) ----------------------------------------------------------------------------


  if laser.hitbox then
lPosX,lPosY = laser.hitbox:getPosition()
end
  if paddle.moveable == "keyboard" and paddle.hitbox2 and menu.screen == 3 then
love.mouse.setPosition(pPosX,pPosY)
end

if powerups.laser == true and pwl >= 0 then
  pwl = pwl - dt

if laser.hitbox then 
  laser.hitbox:setLinearVelocity(0,-400)


  if laser.hitbox:enter("blockup") or laser.hitbox:enter("blockdown") or border.hitboxup:enter("laser")or not menu.screen == 3 then
  laser.hitbox:destroy()
  laser.hitbox = nil
  end
end
if love.keyboard.isDown("space") and lip >= 0 and not laser.hitbox then
  lip = lip - dt
  sfx.laser:play()
laser.hitbox = world:newRectangleCollider(pPosX, pPosY,20,20)
laser.hitbox:setCollisionClass("laser")
laser.hitbox:setType("dynamic")
laser.hitbox:setGravityScale(0)
laser.hitbox:setFixedRotation(true)
laser.draw = 1
end
if lip <= 0 and not love.keyboard.isDown("space")  then
  lip = 0.002
end

end
if pwl <= 0 then
  powerups.laser = false
  if laser.hitbox then
    laser.hitbox:destroy()
  laser.hitbox = nil 
  end
  pwl = 5
end
if not laser.hitbox and powerups.laser == true then
    laser.draw = 0
end


if powerups.melt == true then
pwm = pwm - dt
if pwm >= 2.9 then
  sfx.melt:setPitch(math.random(5,40)/10)
sfx.melt:play()
end
end

if pwm <= 0 then
  pwm = 0
  powerups.melt = false
  powerups.selection = 0
    pwm = 3
end


if powerups.enlarge == true and pwe >= 9.9 then
  sfx.expand:play()
end
if powerups.enlarge == true then
pwe = pwe - dt
end
if pwe <= 0 then
  sfx.contract:play()
  paddle.generated = 0
  pwe = 0
  powerups.enlarge = false
  powerups.selection = 0
    pwe = 10
    
end
  

bufflogic.PowerUpLogic()

  if love.keyboard.isDown("m") and msd >= 0 and mim == true then
 love.audio.setVolume(0)
msd = msd - dt
mim = false
end
 if love.keyboard.isDown("m") and msd >= 0 and mim == false then
love.audio.setVolume(1)
msd = msd - dt
mim = true
 end
if msd <= 0 and not love.keyboard.isDown("m") then
msd = .002
end

  if not music.one:isPlaying() then
music.two:play()
  end
  if not music.two:isPlaying() then
music.one:play()
  end


  
  if destroyer.created == 0 and love.keyboard.isDown("escape") and menu.screen == 3 then
        sfx.select:play()
 destroyer.hitbox = world:newRectangleCollider(0, 0,800,600)
  destroyer.hitbox:setCollisionClass("destroyer")
  destroyer.hitbox:setFixedRotation(true)
destroyer.created = 1
end
  if blockTotal and blockDestroyed then
destroy.blockDestroyer()
  end
if destroyer.created == 1 then
destroyer.hitbox:setPosition(400,300)
end
if not love.keyboard.isDown("escape") and destroyer.created == 1 then
  destroyer.hitbox:destroy()
  destroyer.created = 0
destroyer.allowdisable = 1
end

UI.menu(dt)
if menu.screen == 4 then -- config -----------------------------------------------------------------
  
if love.keyboard.isDown("backspace") then
sdt = sdt - dt 
end

if not love.keyboard.isDown("backspace") then
sdt = 5
end

if sdt <= 0 then
os.remove("save-values")
end

if love.keyboard.isDown("lshift") and ctu == 0.02 and creatorTools.status == false then
  creatorTools.spriteID = 0
creatorTools.status = true
if creatorTools.mode == 1 then
creatorTools.msg = "build"
else
  creatorTools.msg = "decorate"
end
sfx.select:play()
print ("you've selected creator tools; select witch tool will you use:")
print ("press 'z' for building a level (1), press 'x' for decorating one (2)")
print ("current mode is: "..creatorTools.msg)
ctu = ctu - dt
end

if love.keyboard.isDown("lshift") and ctu == 0.02 and creatorTools.status == true then
creatorTools.status = false
creatorTools.msg = "false"
sfx.select:play()
if ctm == 0.002 then
print ("current mode is: "..creatorTools.msg)
ctm = ctm - dt
end
ctu = ctu - dt
end


if love.keyboard.isDown("z") and ctu == 0.02 and creatorTools.status == true then
    creatorTools.spriteID = 0
creatorTools.mode = 1
creatorTools.msg = "build"
sfx.select:play()
if ctm == 0.002 then
print ("current mode is: "..creatorTools.msg)
ctm = ctm - dt
end
ctu = ctu - dt
end

if love.keyboard.isDown("x") and ctu == 0.02 and creatorTools.status == true then
    creatorTools.spriteID = 0
creatorTools.mode = 2
creatorTools.msg = "decorate"
sfx.select:play()
print ("current mode is: "..creatorTools.msg)
ctu = ctu - dt
end

if love.keyboard.isDown("lshift") and ctu == 0.02 and creatorTools.status == true then
creatorTools.status = false
creatorTools.msg = "false"
sfx.select:play()
ctu = ctu - dt
end
if ctu <= 1 and not love.keyboard.isDown("lshift") and not love.keyboard.isDown("z") and not love.keyboard.isDown("x") then
  ctu = 0.02
  ctm = 0.002
end

  if pmtimer <= .01 and pmtimer >=0 then
   if love.keyboard.isDown("1") and pmstatus == 0  then
     paddle.moveable = "keyboard"
       pmtimer = pmtimer-dt
     pmstatus = 1
     sfx.select:play()

    elseif love.keyboard.isDown("1") and pmstatus == 1 then
  paddle.moveable = "mouse"
  pmstatus = 0
    pmtimer = pmtimer-dt
     sfx.select:play()
    end
    end
        if pmtimer <=0 and not love.keyboard.isDown("1") then
pmtimer = 0.01
    end

  end
        bounceRNG = math.random(60,120)
mPosX, mPosY = love.mouse.getPosition()
function BlockColor()
block.selection = math.random(1,4)
end

function BGchange()
bg.selection = math.random(1,2)
end

if block.selection == 1 then 
block.sprite = love.graphics.newImage('images/block1.png')
elseif block.selection == 2 then 
block.sprite = love.graphics.newImage('images/block2.png')
elseif block.selection == 3 then 
block.sprite = love.graphics.newImage('images/block3.png')
elseif block.selection == 4 then 
block.sprite = love.graphics.newImage('images/block4.png')
end
if menu.screen == 3 then

if paddle.generated == 0 and powerups.enlarge == false then
    if paddle.hitbox1 then
    paddle.hitbox1:destroy()
paddle.hitbox2:destroy()
paddle.hitbox3:destroy()
  end

if paddle.hitbox1 and pPosX >= 700 then
pdPosX = 700
end
if paddle.hitbox1 and pPosX <= 0 then
pdPosX = 0
end
paddle.hitbox1 = world:newRectangleCollider(mPosX-30,410+60, 20,20)
paddle.hitbox2 = world:newRectangleCollider(mPosX,410+60, 40,20)
paddle.hitbox3 = world:newRectangleCollider(mPosX+30,410+60, 20,20)

  paddle.hitbox1:setType("kinematic")
paddle.hitbox2:setType("kinematic")
paddle.hitbox3:setType("kinematic")

  paddle.hitbox1:setCollisionClass("paddle")
paddle.hitbox2:setCollisionClass("paddle")
paddle.hitbox3:setCollisionClass("paddle")

paddle.hitbox1:setFixedRotation(true)
paddle.hitbox2:setFixedRotation(true)
paddle.hitbox3:setFixedRotation(true)
    if paddle.moveable == "keyboard" then
    pdp = false
  end

paddle.generated = 1
end
if paddle.generated == 0 and powerups.enlarge == true then
    if paddle.hitbox1 then
    paddle.hitbox1:destroy()
paddle.hitbox2:destroy()
paddle.hitbox3:destroy()
  end

paddle.hitbox1 = world:newRectangleCollider(mPosX-30,410+60, 20,20)
paddle.hitbox2 = world:newRectangleCollider(mPosX,410+60, 60,20)
paddle.hitbox3 = world:newRectangleCollider(mPosX+30,410+60, 20,20)

  paddle.hitbox1:setType("kinematic")
paddle.hitbox2:setType("kinematic")
paddle.hitbox3:setType("kinematic")

  paddle.hitbox1:setCollisionClass("paddle")
paddle.hitbox2:setCollisionClass("paddle")
paddle.hitbox3:setCollisionClass("paddle")

paddle.hitbox1:setFixedRotation(true)
paddle.hitbox2:setFixedRotation(true)
paddle.hitbox3:setFixedRotation(true)

    if paddle.moveable == "keyboard" then
    pdp = false
  end

paddle.generated = 1
end
if clicked == false and setter.isDone == false then
    setter.hitbox = world:newRectangleCollider(mPosX, 455, 10,10)
    setter.hitbox:setCollisionClass("setter")
    setter.hitbox:setType("kinematic")
setter.isDone = true
end
if ball.created == 0 and tba == 0 and igclicked == .018 then
    if clicked == true then
      sPosX, sPosY = setter.hitbox:getPosition()
    ball.hitbox = world:newCircleCollider(sPosX, sPosY, 5)
ball.hitbox:setCollisionClass("ball")
vx,vy = ball.hitbox:getLinearVelocity()
 ball.created = 1
end 

end
if isPaused == false then
  if paddle.moveable == "mouse" then
    if powerups.enlarge == false then
paddle.hitbox1:setPosition(mPosX-30,410+60)
paddle.hitbox2:setPosition(mPosX,410+60)
paddle.hitbox3:setPosition(mPosX+30,410+60)
  end
      if powerups.enlarge == true then
paddle.hitbox1:setPosition(mPosX-40,410+60)
paddle.hitbox2:setPosition(mPosX,410+60)
paddle.hitbox3:setPosition(mPosX+40,410+60)
  end
  end
 if paddle.moveable == "keyboard" then
  if powerups.enlarge == false then
  if pdp == false then
  paddle.hitbox1:setPosition(mPosX-30,410+60)
paddle.hitbox2:setPosition(mPosX,410+60)
paddle.hitbox3:setPosition(mPosX+30,410+60)
pdp = true
  end
end
        if powerups.enlarge == true then
            if pdp == false then
paddle.hitbox1:setPosition(mPosX-40,410+60)
paddle.hitbox2:setPosition(mPosX,410+60)
paddle.hitbox3:setPosition(mPosX+40,410+60)
pdp = true
            end
  end
  
if love.keyboard.isDown("a") then
paddle.hitbox1:setLinearVelocity(-400,0)
paddle.hitbox2:setLinearVelocity(-400,0)
paddle.hitbox3:setLinearVelocity(-400,0)
setter.hitbox:setLinearVelocity(-400,0)
end
if love.keyboard.isDown("d") then
paddle.hitbox1:setLinearVelocity(400,0)
paddle.hitbox2:setLinearVelocity(400,0)
paddle.hitbox3:setLinearVelocity(400,0)
setter.hitbox:setLinearVelocity(400,0)


end
if not love.keyboard.isDown("a") and not love.keyboard.isDown("d") or love.keyboard.isDown("a") and love.keyboard.isDown("d") then
paddle.hitbox1:setLinearVelocity(0,0)
paddle.hitbox2:setLinearVelocity(0,0)
paddle.hitbox3:setLinearVelocity(0,0)
setter.hitbox:setLinearVelocity(0,0)
end

paddle.posX, paddle.posY = paddle.hitbox2:getPosition()

if paddle.posX <= 10 and not love.keyboard.isDown("d") then
  paddle.hitbox1:setLinearVelocity(0,0)
  paddle.hitbox2:setLinearVelocity(0,0)
paddle.hitbox3:setLinearVelocity(0,0)
setter.hitbox:setLinearVelocity(0,0)
end

if paddle.posX >= 790 and not love.keyboard.isDown("a") then
  paddle.hitbox1:setLinearVelocity(0,0)
  paddle.hitbox2:setLinearVelocity(0,0)
paddle.hitbox3:setLinearVelocity(0,0)
setter.hitbox:setLinearVelocity(0,0)
end


end

  if paddle.moveable == "mouse" then
setter.hitbox:setPosition(mPosX,460)
  end
  if paddle.moveable == "keyboard" and pPosX then
  setter.hitbox:setPosition(pPosX,460)

end
end

if love.keyboard.isDown("y") then
  score = score + 100
end

if border.hitboxdown:enter("ball") then
        lives = lives - 1
          ball.hitbox:destroy()
          sfx.dead:play()
  tba = 1.3
  ball.created = 0
  clicked = false
  igclicked = 0
    end


    if lives == 0 then --death script ---------------------------------------------------------------
     
 destroyer.hitbox = world:newRectangleCollider(0, 0,800,600)
  destroyer.hitbox:setCollisionClass("destroyer")
  destroyer.hitbox:setFixedRotation(true)
destroyer.created = 1

      menu.screen = 2
    menu.created = 0
    blockDestroyed = 0
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
  lives = 3
    end

    if level.latest == level.unlocked then
levelUnlockable = true
    else
      levelUnlockable = false
    end



if blockDestroyed == blockTotal then
  ball.hitbox:destroy()
  blockDestroyed = 0
  sfx.win:play()
  tba = 1.3
  igclicked = 0
  ball.created = 0
  clicked = false
  level.detect = level.detect + 1
  gen.levelGen(level.detect)
  BlockColor()
  if levelUnlockable == true then
  level.unlocked = level.unlocked + 1
  end
  level.latest = level.latest + 1

end



if ball.created == 1 then
ballX,ballY = ball.hitbox:getPosition()
bouncer.ballBounce()
end
vx = 150
vy = 150


if clicked == false and love.keyboard.isDown("space") and igclicked <= 0 then
    clicked = true

end
if love.keyboard.isDown("space") and tba == 0 then
    igclicked = igclicked + 0.009
    
end
if menu.screen == 3 then
pPosX,pPosY = paddle.hitbox2:getPosition()
    msgbg = msgbg - dt
end

end
autosave = autosave - dt
if autosave <= 4 then
    savedShowTimer = savedShowTimer - dt
end
if autosave <= 0 then
  saveGame()
        if creatorTools.status == false then
  print ("Saved!")
        end
  autosave = 20
end
if ctpm == 0 or ctmp == nil and menu.screen == 2 then
ctpm = 1
end
if creatorTools.status == true and menu.screen == 3 and ctpm == 1 then
print ("--- Welcome to the level creator. ---")
print ("Press 'shift' to place blocks")
print ("IMPORTANT: the order of placement is important, ")
print ("you must have the same order for building and drawing,")
print ("else the blocks wont be destroyed properly")

if creatorTools.mode == 1 then
print ("as you've selected build mode, the console's output will be hitboxes,")
print( "you may copy them into levelGen.lua following the preset that's there.")
elseif creatorTools.mode == 2 then
print ("as you've selected decorate mode, the console's output will be sprites,")
print( "you may copy them into levelDraw.lua following the preset that's there.")
end
print("----- copy the following -----")
ctpm = ctpm - dt
end
world:update(dt)
end

function saveGame()

  local f= io.open("save-values","w")
if f then
  --level unlocked
  f:write(tostring(level.unlocked))
   f:write("\n")
   --score
 f:write(tostring(score))
    f:write("\n")
    --lives
     f:write(tostring(lives))
    f:write("\n")
    --paddle movement config
       f:write(tostring(paddle.moveable))
  f:close()
else
  error("Failed to open save file :c")
end
end
function loadGame()
  local f= io.open("save-values","r")
if f then
local levelread = f:read("*l")
local scoreread = f:read("*l")
local liveread = f:read("*l")
local paddleconfig = f:read("*l")
level.unlocked = (tonumber(levelread))
score = (tonumber(scoreread))
lives = (tonumber(liveread))
paddle.moveable = (paddleconfig)

  f:close()
else
  saveGame()
end
end
function love.draw() -------------------------------------------------------------------------------
  
  UIdraw.menuDraw()   
  if setter.isDone == true and igclicked <= 0 and menu.screen == 3 then
love.graphics.draw(setter.sprite,pPosX,450,0,.45,.45,15,10)
end
blockcolocator.BlockDefinition()
  
if paddle.moveable == "mouse" and menu.screen == 3 then
  if powerups.enlarge == false then
 love.graphics.draw(sprites.paddle,mPosX-40,460,0,1,1)
elseif powerups.enlarge == true then
 love.graphics.draw(sprites.paddleEnlarge,mPosX-50,460,0,1,1)
end

elseif paddle.moveable == "keyboard" and menu.screen == 3 then
if pdpb == false then
 if powerups.enlarge == false then
 love.graphics.draw(sprites.paddle,mPosX-40,460,0,1,1)
 end
if powerups.enlarge == true then
 love.graphics.draw(sprites.paddleEnlarge,mPosX-50,460,0,1,1)
end
 pdpb = true 
end
if menu.screen == 3 and powerups.enlarge == false then
love.graphics.draw(sprites.paddle,pPosX-40,460,0,1,1)
end
if menu.screen == 3 and powerups.enlarge == true then
love.graphics.draw(sprites.paddleEnlarge,pPosX-50,460,0,1,1)
end
if powerups.laser == true and laser.draw == 1 then
love.graphics.draw(sprites.laser,lPosX,lPosY,0,3,3,4,4)
end

end
if creatorTools.status == true then
love.graphics.draw(block.sprite,mPosX, mPosY,0,1,1)
if menu.screen == 3 then
for i = 1, creatorTools.spriteID do -- decorX & Y was asisted by AI (grok), althought most of this was humanmade
    love.graphics.draw(block.sprite, decorX[i], decorY[i], 0, 1, 1)
end
end
end
 if ball.created == 1 then
 love.graphics.draw(ball.sprite,ballX,ballY,0,.45,.45,10,10)
 end
      if powerups.exist == true and menu.screen == 3 then
love.graphics.draw(sprites.powerups,pwPosX ,pwPosY,0,2,2,4,4)
 end
  if love.keyboard.isDown("up") then
world:draw()
end
if level.detect then
if level.detect >= 8 and level.detect <= 999 and menu.screen == 3 then
world:draw()
end
end



end




-- TODO: 

-- overhaul grafico (en proceso )
-- que falta del overhaul = shaders leves, remasterizar el menu de configuraciones, terminar los 
-- niveles de decorar, añadir cuadro guia para creador de niveles

-- mas niveles. 

-- debuffs

-- MOBILE SUPPORT
