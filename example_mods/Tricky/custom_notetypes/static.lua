function onCreate()
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'static' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'exe/killNOTES/staticNotes');
			setPropertyFromGroup('unspawnNotes', i, 'missHealth', '0.3');
			setPropertyFromGroup('unspawnNotes', i, 'hitCausesMiss', false);

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false);
			end
		end
	end
end

function noteMiss(id, noteData, noteType, isSustainNote)
	if noteType == 'static' then
	  playSound('hitStatic1', 1);
    end
end