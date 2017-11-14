quest OpenBec1Gui begin
	state start begin
		when levelup begin
		if pc.get_level() == 5 then
		if pc . job == 0 then -- Savaşçı
			cmdchat("OpenBec1Gui")
		elseif pc . job == 1 then -- Ninja
			cmdchat("OpenBec2Gui")
		elseif pc . job == 2 then -- Sura
			cmdchat("OpenBec3Gui")
		elseif pc . job == 3 then -- Şaman
			cmdchat("OpenBec4Gui")
		elseif pc . job == 4 then -- Lycan
			cmdchat("OpenBec5Gui")
		end
	end
end
end
end