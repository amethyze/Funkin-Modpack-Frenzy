local test = false;
function onCreate()
	--Iterate over all notes
	makeLuaSprite('cover', 'glow', -600, -300);
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Shield' then --Check if the note on the chart is a Bullet Note
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'ShieldNotes'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashHue', 0);
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashSat', 0);
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashBrt', 0);

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false); --Miss has penalties
			end
		end
	end
end

function onUpdate()

end

function goodNoteHit(id, direction, noteType, isSustainNote)
	if noteType == 'Shield' then
    	test = false;
		playSound('shatter', '0.4')
		removeLuaSprite('cover');
        return Function_Continue
	end
	if test == true then
		health = getProperty('health')
		if getProperty('health') > 0.2 then
		   setProperty('health', health - 0.022);
		end
    end
end

function onEvent(name,value1,value2)
	if name == 'Shielded' then 
		addLuaSprite('cover', true);
		test = true
	end
end

function onStepHit()
    if poison==true then
		health = getProperty('health')
		if getProperty('health') > 0.1 then
        	setProperty('health', getProperty('health')-0.1);
		end
    end
end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'poisonStop' then
        poison=false
    end
end

function noteMiss(id, direction, noteType, isSustainNote)
	if noteType == 'Glitch' then
	    setProperty('health', getProperty('health') +0.0475);
		addMisses(-1);
		cameraShake('camGame', 0.01, 0.2);
	end
end