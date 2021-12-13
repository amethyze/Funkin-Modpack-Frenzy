-- stolen from bbpanzu LOL!!!
-- angle shit thing i guess idk i didnt make it
local angleshit = 1;
-- var i think
local anglevar = 1;
-- the funny
function onBeatHit()
	if curBeat < 72 or curBeat > 88 and curBeat < 104 or curBeat > 120 and curBeat < 192 then
		triggerEvent('Add Camera Zoom', 0.04,0.08)

		if curBeat % 2 == 0 then
			angleshit = anglevar;
		else
			angleshit = -anglevar;
		end
		--setProperty('camHUD.angle',angleshit*3)
		--setProperty('camGame.angle',angleshit*3)
		--doTweenAngle('turn', 'camHUD', angleshit, stepCrochet*0.002, 'circOut')
		doTweenX('tuin', 'camHUD', -angleshit*8, crochet*0.001, 'linear')
		--doTweenAngle('tt', 'camGame', angleshit, stepCrochet*0.002, 'circOut')
		doTweenX('ttrn', 'camGame', -angleshit*4, crochet*0.001, 'linear')
	else
		setProperty('camHUD.angle',0)
		setProperty('camHUD.x',0)
		setProperty('camHUD.x',0)
	end
	if curBeat == 72 or curBeat == 104 then -- 72
		triggerEvent('Camera Follow Pos',600,750)
	end
	if curBeat == 87 or curBeat == 119 then
		triggerEvent('Camera Follow Pos','','')
	end
end

function onStepHit()
	if curBeat < 72 or curBeat > 88 and curBeat < 104 or curBeat > 120 and curBeat < 192 then
		if curStep % 4 == 0 then
			doTweenY('rrr', 'camHUD', -12, stepCrochet*0.002, 'circOut')
			doTweenY('rtr', 'camGame.scroll', 12, stepCrochet*0.002, 'sineIn')
		end
		if curStep % 4 == 2 then
			doTweenY('rir', 'camHUD', 0, stepCrochet*0.002, 'sineIn')
			doTweenY('ryr', 'camGame.scroll', 0, stepCrochet*0.002, 'sineIn')
		end
	end
end