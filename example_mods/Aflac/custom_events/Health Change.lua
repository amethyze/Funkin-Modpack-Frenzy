-- Event notes hooks
function onEvent(name, value1, value2)
	if name == 'Health Change' then
		healthchange = tonumber(value1);
		setProperty('health', healthchange);
		--debugPrint('Event triggered: ', name, duration, targetAlpha);
	end
end