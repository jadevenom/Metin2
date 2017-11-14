quest meleylair_zone begin
	state start begin
		when 20419.chat."Ýn'den Ayrýl! " with MeleyLair.IsMeleyMap() begin
			say_title(mob_name(20419))
			say("")
			say("Ayrýlmak Ýstiyor musun? ")
			say("")
			local agree = select("Evet ", "Hayýr ")
			if agree == 1 then
				MeleyLair.Leave()
			else
				setskin(NOWINDOW)
				return
			end
		end
		
		when login with MeleyLair.IsMeleyMap() begin
			MeleyLair.Check()
		end
		
		when 20420.click with MeleyLair.IsMeleyMap() begin
			say_title(mob_name(20420))
			say("")
			local menu = select("Ödülü Seç. ", "Kapat ")
			if menu == 1 then
				say_title(mob_name(20420))
				say("")
				if not MeleyLair.CanGetReward() then
					say("Çok soðuk ve yanlýz. Benim gelecekteki kocam nerede? ")
				else
					say("Ejderhalar kraliçesi meley'i yendin. Bir Ödül Seç; ")
					say("Ödüller: ")
					local reward_menu = select("Kraliçe Meley'in Sandýðý ", "Ejderha Bekçisi Sandýðý ", "Ýptal ")
					if reward_menu == 1 then
						say_title(mob_name(20420))
						say("")
						say("Kraliçe Meley'in Sandýðýný almak istiyor musun? ")
						local agree = select("Evet ", "Hayýr ")
						if agree == 1 then
							MeleyLair.Reward(reward_menu)
							say_title(mob_name(20420))
							say("")
							say("Ýþte ödülün! ")
						else
							setskin(NOWINDOW)
							return
						end
					elseif reward_menu == 2 then
						say_title(mob_name(20420))
						say("")
						say("Ejderha Bekçisi Sandýðýný almak istiyor musun? ")
						local agree = select("Evet ", "Hayýr ")
						if agree == 1 then
							MeleyLair.Reward(reward_menu)
							say_title(mob_name(20420))
							say("")
							say("Ýþte ödülün! ")
						else
							setskin(NOWINDOW)
							return
						end
					else
						setskin(NOWINDOW)
						return
					end
				end
			else
				setskin(NOWINDOW)
				return
			end
		end
		
		when 20388.click."" begin
		end
    end
end