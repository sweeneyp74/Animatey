# Animatey
A simple animation handler for Love2d.
To add a animation, first add your different images, indexed by order of execution to a table
```
  --import your images - this also works with love.graphics.newQuad()
  first = love.graphics.newImage(img1)
  middle = love.graphics.newImage(img2)
  last = love.graphics.newImage(img3)
  
  --add them to a table. Make sure the key is an index
  runGroup = {}
  runGroup[0] = first
  runGroup[1] = middle
  runGroup[2] = last
```
Now you have a table of indexed images so you are ready to create a animatey object.
The first parameter is the table you just created and the second parameter is time in seconds. 
So 1 would be 1 second and .1 would be a tenth of a second. This determines the time between each frame of the animation.
```
playerAnimation = Animatey.new(runGroup, .05)
```
There is a funnction where you can reset the animation to the beginning
```
playerAnimation.reset()
```
Pretty Simple Stuff.
    
Last you need to know how to update the animation to the current sprite.
During the function update part of the cycle, you call this function
```
playerAnimation.getSprite(dt)
```
dt is deltatime and can be added to the parameters of function update. Then pass that dt into this function call.
Everytime to you call this function, the object determines if its time to send you the next sprite in the animation.
