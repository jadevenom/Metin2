quest arboreal_craft1 begin
	state start begin
		when 20383.chat."Geliþtirme Penceresini Aç " with pc.get_level() >= 90 begin
			setskin(NOWINDOW)
			command("cube open")
		end
	end
end