local angleshit = 0.5;
local anglevar = 0.5;
function opponentNoteHit(id, direction, noteType, isSustainNote)
	if difficulty == 2 then
		if curBeat < 288 then
			if curBeat > 180 then
				cameraShake('cam', '0.015', '0.1')
			end
		end
	end
end