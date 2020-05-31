Powerup = Class{}


local GRAVITY = 2



function Powerup:init(skin)
	  
	    self.x = x
    self.y = y
	
    -- starting dimensions
    self.width = 16
    self.height = 16
 self.dy = 0
      

self.skin = skin

getpower = false
    
end


function Powerup:collides(target)


    if self.x > target.x + target.width or target.x > self.x + self.width then
        return false
    end

    -- then check to see if the bottom edge of either is higher than the top
    -- edge of the other
    if self.y > target.y + target.height or target.y > self.y + self.height then
        return false
    end 

    -- if the above aren't true, they're overlapping
    return true
end

function Powerup:update(dt)
if getpower == true then
    self.dy = self.dy + GRAVITY * dt
    self.y = self.y + self.dy
	end
end


function Powerup:render()

  if getpower == true then
    love.graphics.draw(gTextures['main'], gFrames['powers'][self.skin], self.x, self.y)
	end
end

