Animatey = {}

--> action is a table(array) containing your sprites for an animation. INDEX YOUR TABLE
--> speed is in seconds. Dont Mess up these parameters up or bad things happen mmmmkay
function Animatey.new(action, speed) --Constructor "sudo"-method
  --assign variables of object. currentStep will tells us which sprite to use
  local anim = {}
  anim.action = action
  anim.speed = speed
  anim.currentStep = 0
  anim.nextStep = 0
  anim.time = 0 --time since the last update
--add function to anim----------------------------------
  function anim.getSprite(dt)
    --first we need to confirm the next sprite that will play
    if anim.action[anim.currentStep + 1] ~= nil then
      anim.nextStep = anim.currentStep + 1
      print("+1")
    else
      anim.nextStep = 0
      print("0")
    end
    --next we check to see if the required amount of time has passed to play the next sprite
    anim.time = anim.time + dt

    if  anim.time - anim.speed >= 0  then

          anim.time = 0
          sprite = anim.action[anim.currentStep]
          anim.currentStep = anim.currentStep + 1

          anim.currentStep = anim.nextStep --update the step

          return sprite

    else
      sprite = anim.action[anim.currentStep]
      return sprite
    end
  end
--add function to reset to original state----------------
  function anim.reset()
  --just reseting some values so we get a fresh animation cycle whe we call this funciton
  anim.currentStep = 0
  anim.nextStep = 0
  anim.time = 0
  --next time you call this function, you will begin your animation from your first sprite
  --use this for when you switch from one animation to another then back to the first animation.
  end
---------------------------------------------------------
  --return object
  return anim
end
----------------------------------------------------------------------------------------------------
