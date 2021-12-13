function onCreate()
    doTweenAlpha('hillsGone', 'hills', 0, 0.01, linear);
    setProperty('hills.antialiasing', false);
    
end

function opponentNoteHit()
  cameraShake('game', 0.005, 0.3);
end

stepHitFuncs = { --a bunch of timed events, timed to steps

	[128] = function()
		triggerEvent('Play Animation', 'singDOWN-alt','dad');
    cameraShake('game', 0.005, 0.3);
  end,

  [130] = function()
		triggerEvent('Play Animation', 'singDOWN-alt','dad');
    cameraShake('game', 0.005, 0.3);
  end,

  [132] = function()
		triggerEvent('Play Animation', 'singDOWN-alt','dad');
    cameraShake('game', 0.005, 0.3);
  end,

  [134] = function()
		triggerEvent('Play Animation', 'singDOWN-alt','dad');
    cameraShake('game', 0.005, 0.3);
  end,

  [136] = function()
		triggerEvent('Play Animation', 'singDOWN-alt','dad');
    cameraShake('game', 0.005, 0.3);
  end,

  [138] = function()
		triggerEvent('Play Animation', 'singDOWN-alt','dad');
    cameraShake('game', 0.005, 0.3);
  end,

  [140] = function()
		triggerEvent('Play Animation', 'singDOWN-alt','dad');
    cameraShake('game', 0.005, 0.3);
  end,

  [328] = function()
		triggerEvent('Play Animation', 'singDOWN-alt','dad');
    cameraShake('game', 0.005, 0.3);
  end,

  [330] = function()
		triggerEvent('Play Animation', 'singDOWN-alt','dad');
    cameraShake('game', 0.005, 0.3);
  end,

  [332] = function()
		triggerEvent('Play Animation', 'singDOWN-alt','dad');
    cameraShake('game', 0.005, 0.3);
  end,

  [334] = function()
		triggerEvent('Play Animation', 'singDOWN-alt','dad');
    cameraShake('game', 0.005, 0.3);
  end,

  [528] = function()
		triggerEvent('Change Character', 1, 'sonic.exe-pixel');
    triggerEvent('Change Character', 0, 'BF-pixel');
    doTweenAlpha('hillsAppear', 'hills', 1, 0.01, linear);
    doTweenAlpha('NoGF', 'gf', 0, 0.01, linear);
  end,

  [784] = function()
		triggerEvent('Change Character', 1, 'sonic.exeP2');
    triggerEvent('Change Character', 0, 'bf');
    doTweenAlpha('hillsGone', 'hills', 0, 0.01, linear);
    doTweenAlpha('GF', 'gf', 1, 0.01, linear);
  end,

  [1288] = function()
		triggerEvent('Play Animation', 'singDOWN-alt','dad');
    cameraShake('game', 0.005, 0.3);
  end,

  [1290] = function()
		triggerEvent('Play Animation', 'singDOWN-alt','dad');
    cameraShake('game', 0.005, 0.3);
  end,

  [1292] = function()
		triggerEvent('Play Animation', 'singDOWN-alt','dad');
    cameraShake('game', 0.005, 0.3);
  end,

  [1294] = function()
		triggerEvent('Play Animation', 'singDOWN-alt','dad');
    cameraShake('game', 0.005, 0.3);
  end,

  [5] = function()
		
  end,
}



function onStepHit()
    if stepHitFuncs[curStep] then 
        stepHitFuncs[curStep]() -- Executes function at curStep in stepHitFuncs
    end

end

