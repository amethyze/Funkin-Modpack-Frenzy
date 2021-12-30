function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an Instakill Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'ring' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'exe/specialNOTES/Ring');
			setPropertyFromGroup('unspawnNotes', i, 'hitHealth', '0');
			setPropertyFromGroup('unspawnNotes', i, 'hitCausesMiss', false);

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress', true) then
				setPropertyFromGroup('unspawnNotes', i, 'mustPress', true);
			end
		end
	end
end

function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'ring' then
		playSound('Ring_rl', 0.4); -- its really load at full vol
		triggerEvent('Play Animation', 'hey','bf');
	end

	addScore(500)
end

function noteMiss(id, noteData, noteType, isSustainNote)
	if noteType == 'ring' then
		addMisses(5)
	end
end