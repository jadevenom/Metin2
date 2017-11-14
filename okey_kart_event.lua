quest cards_event begin
	state start begin
		when login with game.get_event_flag("cards_event") != 0 begin
			cmdchat("cards icon")
		end
		when 79505.pick with pc.count_item(79505) >= 24 begin
			pc.remove_item(79505, 24)
			pc.give_item2(79506)
		end
		when 20417.chat."Tüm Sýralama" begin
			say_title(mob_name(20417))
			say(pc.get_okay_global_rank())
		end
		when 20417.chat."Ýlk 10 Sýralama" begin
			say_title(mob_name(20417))
			say(pc.get_okay_rund_rank())
		end
	end
end