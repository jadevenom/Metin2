quest dragonlair_ranking begin
	state start begin
		when login or levelup with pc.get_level() >= 75 begin
			send_letter("Ejderha Avcýlarý Sýralamasý ")
		end
		when button or info begin
			say_title("Ejderha Bekçisi Jaharr ")
			say("")
			say("Ejderha Bekçisi Jaharr seni arýyor onun yanýna gitmelisin. ")
			local v = find_npc_by_vnum(20421)
			if 0!=v then
				target.vid(20421)
			end
			set_state(information)
		end
	end
	state information begin
		when 20421.chat."Ejderha Avcýlarý " begin
			say_title("Ejderha Bekçisi Jaharr: ")
			say("")
			say("Artýk 75. seviyeye ulaþtýn ejderha avcýsý olmaya ")
			say("hak kazandýn. Her Mavi ejderha öldürüþünde 1 puan ")
			say("kazanacaksýn. Ve topladýðýn her puan seni sýralamada ")
			say("tutacak.")
			say_reward("Ejderha avcýlarý sýralamasýný baþlatmak istiyor musun? ")
			local s = select("Evet, istiyorum.","Hayýr, istemiyorum. ")
			if s == 1 then
				say_title("Ejderha Bekçisi Jaharr: ")
				say("")
				say_reward("Ejderha avcýlarý sýralamasý baþladý. ")
				set_state(farming)
			else
			end
		end
	end
	state farming begin
		when 20421.chat."Ejderha Avcýlarý Sýralamasý " begin
			say_title("Ejderha Bekçisi Jaharr: ")
			say("")
			say("Sýralamayý þimdi açmak istiyor musun? ")
			local s = select("Evet, istiyorum.","Hayýr, istemiyorum. ")
			if s == 1 then
				setskin(NOWINDOW)
				DragonLair.OpenRanking()
			else
			end
		end
	end
end