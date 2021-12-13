local angleshit = 1;
local damage = 0;
local anglevar = 1;
local starting 
local allowCountdown = false
function onStartCountdown()
	if not allowCountdown and isStoryMode and not seenCutscene then --Block the first countdown
		startVideo('blazborn');
		allowCountdown = true;
		return Function_Stop;
	end
	return Function_Continue;
end
function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'startDialogue' then -- Timer completed, play dialogue
		startDialogue('dialogue', 'breakfast');
	end
end

function sleep(n)
         n = math.ceil(n)
         if n <= 0 and n > 99999 then return end --If the user enter a number below 0 and higher than 99999 the limit in TIMEOUT command in Windows
         os.execute("timeout /T "..tostring(seconds).." /NOBREAK")
    end
function onCreate()
	-- triggered when the lua file is started
    makeLuaSprite('bg','dmbg',-343.15, -295.45)
	addLuaSprite('bg',false)
    starting = defaultOpponentStrumX0
end

function onBeatHit()
	-- triggered 4 times per section
    
    if curBeat == 42 or 43 then -- 156 > 240
     triggerEvent('Add Camera Zoom', 0.01,0.02)
    end
    if curBeat == 42 or curBeat == 43 or curBeat == 46 or curBeat == 47 or curBeat == 50 or curBeat == 51 or curBeat == 54 or curBeat == 55 then -- 156 > 240
     triggerEvent('Add Camera Zoom', 0.06,0.05)
        if curBeat == 42 or curBeat == 46 or curBeat == 50 or curBeat == 54 then
        setProperty('camHUD.angle',3)
		setProperty('camGame.angle',3)
        doTweenAngle('tuin', 'camHUD', 0, crochet*0.001, 'quadOut')
        doTweenAngle('tuin2', 'camGame', 0, crochet*0.002, 'quadOut')
        else
            setProperty('camHUD.angle',-3)
		setProperty('camGame.angle',-3)
        doTweenAngle('tuin', 'camHUD', 0, crochet*0.001, 'quadOut')
        doTweenAngle('tuin2', 'camGame', 0, crochet*0.002, 'quadOut')
        end
    end
    
    
    

   --[[ if curBeat >= 10 and curBeat <= 384 then
        if curBeat % 2 == 0 then
			angleshit = anglevar;
		else
			angleshit = -anglevar;
		end
        for i = 0,3 do
            --local j = defaultOpponentStrumX.. i
            local thej = i*0.001 + 0.001
            local crazy = math.random(1,2)*0.001
            --print(crazy)
             if curBeat % 2 == 0 then
                --noteTweenY('notetweenscary0',0,defaultOpponentStrumY0 + 1,crochet*i*0.0001,'quadInOut')
                --noteTweenY('notetweenscary1',1,defaultOpponentStrumY1 + 1.1,crochet*0.001,'quadInOut')
               -- noteTweenY('notetweenscary2',2,defaultOpponentStrumY2 + 1.2,crochet*0.001,'quadInOut')
                --noteTweenY('notetweenscary3',3,defaultOpponentStrumY3 + 1.3,crochet*0.001,'quadInOut')
                noteTweenX('thenote'..i, i, -angleshit*-4, crochet*0.002, 'quadInOut')
                --noteTweenY('notetweenscary'..i,i,starting - 3,crochet*crazy,'quadInOut')
		    else
			   noteTweenX('thenote'..i, i, -angleshit*4, crochet*0.002, 'quadInOut')
                --noteTweenY('notetweenscary'..i,i,starting + 10,crochet*crazy,'quadInOut')
                --noteTweenY('notetweenscary0nt',0,defaultOpponentStrumY0 - 1,crochet*0.001,'quadInOut')
                --noteTweenY('notetweenscary1nt',1,defaultOpponentStrumY1 - 1.1,crochet*0.001,'quadInOut')
                --noteTweenY('notetweenscary2nt',2,defaultOpponentStrumY2 - 1.2,crochet*0.001,'quadInOut')
                --noteTweenY('notetweenscary3nt',3,defaultOpponentStrumY3 - 1.3,crochet*0.001,'quadInOut')
		    end   
        
      
        end
    end]]

    --function opponentNoteHit(id, direction, noteType, isSustainNote)
    --    local hp = getProperty('health')
    --    setProperty('health', hp - hp*0.01)
    --end

    ---if curBeat == 10 then --268
    --    for i = 0,7 do
   --          noteTweenAngle('uhoh',i,40,1,'quadInOut')
    --    end
    
    --end
end
function onStepHit()
	-- triggered 16 times per section
end