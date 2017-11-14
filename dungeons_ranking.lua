quest dungeons_ranking begin
	state start begin
		when 20421.chat."Sýralama Listesi " begin
			say_title(mob_name(20421))
			say("")
			local menu = select("Meley'in Ýni ", "Ýptal ")
			if menu == 1 then
				MeleyLair.OpenRanking()
				setskin(NOWINDOW)
				return
			else
				setskin(NOWINDOW)
				return
			end
		end
    end
end