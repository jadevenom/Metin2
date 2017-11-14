quest attr_transfer begin
	state start begin
		when 20406.chat."Kostüm Bonus Transfer" begin
			say_title(mob_name(20406))
			say("")
			say("2. kostümündeki efsunlarý 1. kostümüne")
			say("aktarabilirsin.")
			say("")
			say("Bu iþlemi yapabilmek için önce")
			say("transfer nesnesini pencereye eklemelisin.")
			say("")
			say("2. kostüm yok edilecektir..")
			say("")
			say("Devam etmek istiyor musun ?")
			say("")
			local confirm = select("Evet", "Hayýr")
			if confirm == 2 then
				return
			end
			
			setskin(NOWINDOW)
			command("attrtransfer open")
		end
	end
end