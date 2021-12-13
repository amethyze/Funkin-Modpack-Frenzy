function onUpdate(elapsed)
if curStep == 272 or curStep == 276
songPos = getSongPosition()

	noteTweenAngle('A',4 , 360 , 0.25, linear);
	noteTweenAngle('B',5 , 360 , 0.25, linear);
	noteTweenAngle('C',6 , 360 , 0.25, linear);
	noteTweenAngle('D',7 , 360 , 0.25, linear);
	
	-- oppt notespin
	noteTweenAngle('E',0 , 360 , 0.25, linear);
	noteTweenAngle('F',1 , 360 , 0.25, linear);
	noteTweenAngle('G',2 , 360 , 0.25, linear);
	noteTweenAngle('H',3 , 360 , 0.25, linear);
    end
end