quest event_droplari begin
	state start begin
		when kill with npc.get_race() == 691 or npc.get_race() == 791 or npc.get_race() == 792 or npc.get_race() == 1192 or npc.get_race() == 1304 or npc.get_race() == 1901 or npc.get_race() == 2091 or npc.get_race() == 2191 or npc.get_race() == 2206 or npc.get_race() == 2306 or npc.get_race() == 2595 or npc.get_race() == 2596 or npc.get_race() == 3090 or npc.get_race() == 3091 or npc.get_race() == 3190 or npc.get_race() == 3191 or npc.get_race() == 3290 or npc.get_race() == 3291 or npc.get_race() == 3390 or npc.get_race() == 3391 or npc.get_race() == 3490 or npc.get_race() == 3491 
		or npc.get_race() == 3590 or npc.get_race() == 3591 or npc.get_race() == 3595 or npc.get_race() == 3596 or npc.get_race() == 3690 or npc.get_race() == 3691 or npc.get_race() == 3790 or npc.get_race() == 3791 or npc.get_race() == 3890 or npc.get_race() == 3891 or npc.get_race() == 3901 or npc.get_race() == 3902 or npc.get_race() == 3903 or npc.get_race() == 3904 or npc.get_race() == 3905 or npc.get_race() == 3906 or npc.get_race() == 8001 or npc.get_race() == 8002 or npc.get_race() == 8003 or npc.get_race() == 8004 or npc.get_race() == 8005 or npc.get_race() == 8006 or npc.get_race() == 8007 or npc.get_race() == 8008 or npc.get_race() == 8009
		or  npc.get_race() == 8010 or  npc.get_race() ==8011 or npc.get_race() == 8012 or npc.get_race() == 8013 or npc.get_race() == 8014 or npc.get_race() == 8024 or npc.get_race() == 8025 or  npc.get_race() == 8026 or npc.get_race() == 8027 or  npc.get_race() ==8051 or  npc.get_race() == 8052 or  npc.get_race() == 8053 or  npc.get_race() == 8054 or npc.get_race() == 8055 or npc.get_race() == 8056 begin
			if game.get_event_flag("esrarengiz_sandik") == 1 then
				local s = number(1,35)
				if s == 1 then
				notice(""..item_name(50133).." buldum! Þžimdi buna uygun bir anahtar bulmalýyým.")
				game.drop_item_with_ownership("50133",1)
				elseif s == 2 then
				notice(""..item_name(50134).." buldum! Þžimdi buna uygun bir anahtar bulmalýyým.")
				game.drop_item_with_ownership("50134",1)
				elseif s == 3 then
				notice(""..item_name(50135).." buldum! Þžimdi buna uygun bir anahtar bulmalýyým.")
				game.drop_item_with_ownership("50135",1)
				elseif s == 4 then
				notice(""..item_name(50136).." buldum! Þžimdi buna uygun bir anahtar bulmalýyým.")
				game.drop_item_with_ownership("50136",1)
				elseif s == 5 then
				notice(""..item_name(50137).." buldum! Þžimdi buna uygun bir anahtar bulmalýyým.")
				game.drop_item_with_ownership("50137",1)
				end
			end
			if game.get_event_flag("esrarengiz_sandik") == 1 then
				local s = number(1,50)
				if s == 1 then
				game.drop_item_with_ownership("50155",1)
				elseif s == 2 then
				game.drop_item_with_ownership("50151",1)
				elseif s == 3 then
				game.drop_item_with_ownership("50152",1)
				elseif s == 4 then
				game.drop_item_with_ownership("50153",1)
				elseif s == 5 then
				game.drop_item_with_ownership("50154",1)
				end
			end
			if game.get_event_flag("binekveparsomen") == 1 then
			local asddas = number(1,100)
				if asddas == 10 then
				game.drop_item_with_ownership("52701",1)
				elseif asddas == 20 then
				game.drop_item_with_ownership("52702",1)
				elseif asddas == 30 then
				game.drop_item_with_ownership("52703",1)
				elseif asddas == 40 then
				game.drop_item_with_ownership("52704",1)
				elseif asddas == 50 then
				game.drop_item_with_ownership("52705",1)
				elseif asddas == 60 then
				game.drop_item_with_ownership("52706",1)
				elseif asddas == 70 then
				game.drop_item_with_ownership("52707",1)
				elseif asddas == 80 then
				game.drop_item_with_ownership("52708",1)
				elseif asddas == 90 then
				game.drop_item_with_ownership("50067",1)
				elseif asddas == 100 then
				game.drop_item_with_ownership("50068",1)
				end
			end
			if game.get_event_flag("dressup") == 1 then
			local plvl = pc.get_level()
				local mlvl
				local chance = number(1,10)
				local vnumlist_m = {41041,41043,41045,41049,41051,41053,41095,41097,41099,41101,41103,41105,41107,41109,41111,41113}
				local vnumlist_w = {41042,41044,41046,41050,41052,41054,41096,41098,41100,41102,41104,41106,41108,41110,41112,41114}
				local drop = number(1,16)
				if npc.get_race() < 8015 then
					mlvl = (npc.get_race()-8000)*5
				elseif npc.get_race() >= 8015 and npc.get_race() <= 8027 then
					mlvl = (npc.get_race()-8009)*5
				else
					mlvl = (npc.get_race()-8032)*5
				end
				
				
				if mlvl-plvl >= -10 then
					if chance*10 == 100 then
						if pc.get_sex() == 1 then
							game.drop_item_with_ownership(vnumlist_w[drop],1)
						else
							game.drop_item_with_ownership(vnumlist_m[drop],1)
						end
					end
				end			
			end
			if game.get_event_flag("gizemli_sandik") == 1 then
			local asd = number(1,6)
				if asd == 5 then
				notice("Gizemli Sandýk buldum!")
				game.drop_item_with_ownership("50033",1)
				end
			end
			if game.get_event_flag("pet_event") == 1 then
			local asd = number(1, 300)
				if asd == 5 then
				notice("Yavrucuk Kutusu buldum!")
				game.drop_item_with_ownership("38055",1)
				end
			end
			if game.get_event_flag("tabak") == 1 then
			local tabakk = number(1,10)
				if tabakk == 5 then
				game.drop_item_with_ownership("30316",1)
				end
			end
		end
		--ETP EVENTÝ
		when kill with game.get_event_flag("etp_dusur") == 1 and not npc.is_pc() and pc.level >= 30 begin
			if npc.get_level() > pc.get_level() - 10 then
			local sss = number(1, 100)
				if 3 == sss then
				pc.give_item2("30270",1)
				return
				end
			end
		end
		--ETP EVENTÝ
		when kill with game.get_event_flag("hallowen") == 1 and not npc.is_pc() begin
        local ssss = number(1,150)
			if npc.get_level() > pc.get_level() - 10 then
				if ssss == 1 then
				game.drop_item_with_ownership("50095",1)
				return
				end
			end
		end
		
		when kill with game.get_event_flag("kids_day_quiz") == 1 and not npc.is_pc() begin
			if npc.get_level() > pc.get_level() - 10 then
			local sss35 = number(1, 500)
				if sss35 < 10 then
				game.drop_item_with_ownership("50034",1)
				return
				end
			end
		end
		
		when kill with game.get_event_flag("futboltopu") == 1 and not npc.is_pc() begin
		local sa = number(1, 200)
			if npc.get_level() > pc.get_level() - 10 then
				if 3 == sa then
				game.drop_item_with_ownership("50096",1)
				return
				end
			end
		end
		
		when kill with game.get_event_flag("ayisigi") == 1 and not npc.is_pc() begin
		local sa = number(1, 250)
			if npc.get_level() > pc.get_level() - 10 then
				if 3 == sa then
				game.drop_item_with_ownership("50011",1)
				return
				end
			end
		end
		
		when kill with  npc.get_race() ==1401 or  npc.get_race() == 1402 or  npc.get_race() ==1403 or npc.get_race() == 1501 or npc.get_race() == 1502
		or npc.get_race() == 1503 or npc.get_race() == 1601 or npc.get_race() == 1602 or npc.get_race() == 1603 and game.get_event_flag("esrarengiz_sandik") != 1 and game.get_event_flag("parsomen") == 1 begin
		local saa = number(1,40)
			if npc.get_level() > pc.get_level() - 10 then
				if saa == 5 then
				game.drop_item_with_ownership("50067",1)
				elseif saa == 35 then
				game.drop_item_with_ownership("50068",1)
				end
			end
		end
		
		when kill with game.get_event_flag("ramazan") == 1 and not npc.is_pc() begin
			if npc.get_level() > pc.get_level() - 10 then
			local saab = number(1, 180)
				if 5 == saab then
				game.drop_item_with_ownership("30315",1)
				end
			end
		end	
	end
end