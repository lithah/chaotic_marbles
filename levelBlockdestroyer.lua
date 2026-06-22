
-- THINGS I HAVE TO LEARN TO OPTIMIZE THIS MONSTROSITY: loops; tables; DRY principle
-- to the future lithah; PLEASE CHECK THESE

--THIS WAS DONE WITH AI (gemini); not because i didn't want to do it myself; i tried
-- to optimize the not DRY compliant code; but couldn't; if you wanna check the humanmade code; check 
-- discartedCode.lua; this whole script will reuse this code; and il'l adapt it BY HAND to other
-- repeating code; i tried to make this whole project without AI, but leaving it at the state that it was
-- lagged the game; and was a developing hell; again; im so sorry, im still a newbie, and i wanna learn 
-- the concepts; but i need a few things that are outside of my knowledge right now

w = {}

function w.blockDestroyer() 
for i = 1, blockTotal do
    local up = block["hitboxupn" .. i]
    local down = block["hitboxdownn" .. i]
    local existKey = "blockl" .. i .. "exist"

    if up and down and _G[existKey] == true then
        if up:enter("ball") or down:enter("ball") or up:enter("laser") or down:enter("laser")  then
            powerups.posX, powerups.posY = up:getPosition()
            up:destroy()
            down:destroy()
            powerups.chance = math.random(1,3)
            powerups.value = powerups.value + powerups.chance

            _G[existKey] = false 
            score = score + 100
            blockDestroyed = blockDestroyed + 1
        end
        if up:enter("destroyer") or down:enter("destroyer") then
                        up:destroy()
            down:destroy()
            
            _G[existKey] = false 
        end
    end

end
 
end
return w