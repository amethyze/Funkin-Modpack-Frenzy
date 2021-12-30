local soundNum = 0 -- This is a value that increases every time a sound (basically just the shield related sounds) plays in order to make sure no two sounds have the same tag, allowing them to stack sounds.

function onCreate()
	--Iterate over all notes
		math.randomseed(os.clock() * 1000);
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an Instakill Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Aflac Attack' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'AttackNOTES'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'hitHealth', '0'); --Default value is: 0.023, health gained on hit
			setPropertyFromGroup('unspawnNotes', i, 'missHealth', '0.1'); --Default value is: 0.0475, health lost on miss
			setPropertyFromGroup('unspawnNotes', i, 'hitCausesMiss', true);

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false); --Miss has no penalties
			end
		end
	end
	--debugPrint('Script started!')
end

-- Function called when you hit a note (after note hit calculations)
-- id: The note member id, you can get whatever variable you want from this note, example: "getPropertyFromGroup('notes', id, 'strumTime')"
-- noteData: 0 = Left, 1 = Down, 2 = Up, 3 = Right
-- noteType: The note type string/tag
-- isSustainNote: If it's a hold note, can be either true or false
function opponentNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'Aflac Attack' then
		characterPlayAnim('dad','attack',true)
		setProperty('dad.specialAnim', true);
			playSound('attack/swing'.. math.random(1,3),1,'swing'..soundNum)
			soundNum = soundNum + 1
		if keyPressed('block') then
				characterPlayAnim('boyfriend','shieldHit',true)
				playSound('attack/block'.. math.random(1,5),1,'shield'..soundNum)
				soundNum = soundNum + 1
				setProperty('boyfriend.specialAnim', true);
					cameraShake('camGame',0.02,0.1)
        cameraShake('camHUD',0.01,0.1)
			
		else
				characterPlayAnim('boyfriend','swordHit',true)
		setProperty('boyfriend.specialAnim', true);
		setProperty('health',getProperty('health') - 0.1)
			playSound('attack/hurt'.. math.random(1,3),1,'hurt'..soundNum)
			setProperty('failedBlocking',true) -- Achievement shit
			soundNum = soundNum + 1

	cameraShake('camGame',0.06,0.1)
        cameraShake('camHUD',0.01,0.1)
		end
	
	end
end

-- Called after the note miss calculations
-- Player missed a note by letting it go offscreen
function noteMiss(id, noteData, noteType, isSustainNote)
	if noteType == 'Aflac Attack' then
	
	end
end



