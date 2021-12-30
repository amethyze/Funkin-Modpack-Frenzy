local angleshit = 0.3;
local anglevar = 0.3;
function opponentNoteHit(id, direction, noteType, isSustainNote)
	if difficulty == 2 then
		if curBeat < 592 then
			if curBeat > 528 then
				cameraShake('cam', '0.015', '0.1')
			end
		end
		if curBeat < 703 then
			if curBeat > 688 then
				cameraShake('cam', '0.015', '0.1')
			end
		end
	end
end