function omCreate()
   precacheImage('sonic'); -- so it doesn't freeze
end

stepHitFuncs = { --a bunch of timed events, timed to steps

	[764] = function()
		triggerEvent('Play Animation', 'singDOWN-alt','dad');
    end,

    [768] = function()
		triggerEvent('Play Animation', 'singDOWN-alt','dad');
    end,

    [771] = function()
		triggerEvent('Play Animation', 'singDOWN-alt','dad');
    end,

    [774] = function()
		triggerEvent('Play Animation', 'singDOWN-alt','dad');
    end,

    [777] = function()
		triggerEvent('Play Animation', 'singDOWN-alt','dad');
    end,

    [780] = function()
		triggerEvent('Play Animation', 'singDOWN-alt','dad');
    end,

    [783] = function()
		triggerEvent('Play Animation', 'singDOWN-alt','dad');
    end,

    [1305] = function()
      triggerEvent('Play Animation', 'Immagetya','dad');
      doTweenAlpha('HUDgone', 'camHUD', 0, 0.2, linear);
    end,

    [1432] = function()
      doTweenAlpha('HUDback', 'camHUD', 1, 0.2, linear);
    end,

    [1722] = function()
    makeAnimatedLuaSprite('sonic', 'exe/JUMPSCARES/sonicJUMPSCARE', 50, 0); --x and y
    setScrollFactor('sonic', 0, 0);
    addAnimationByPrefix('sonic', 'scare', 'sonicSPOOK0', 24, false);
    objectPlayAnimation('sonic', 'scare', false);

    scaleObject('sonic', 1, 1);
    playSound('datOneSound', 1);
    playSound('jumpscare', 0.3);

    addLuaSprite('sonic', true);

    setObjectCamera('sonic', 'camHUD')

    end
  
}



function onStepHit()
    if stepHitFuncs[curStep] then 
        stepHitFuncs[curStep]() -- Executes function at curStep in stepHitFuncs
    end

end