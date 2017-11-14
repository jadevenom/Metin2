quest time_weapon begin
	state start begin
		when login with game.get_event_flag("time_weapon_activate") == 1 begin
			send_letter("Genç kahramanlar için silahlar ")
		end
		
		when button or info begin
			say_title("Genç kahramanlar için silahlar ")
			say("")
			say("Genç kahraman en cesur savaþçý olarak nam saldýn ")
			say("ama hala tecrübe ve güce ihtiyacýn var. Ejderha ")
			say("Tanrýsý bu krallýðýn umudu olarak seni koruyup ")
			say("kollayacak ve sana maceralarýnda belli bir süre ")
			say("kullanabileceðin bir silah sunacak. ")
			wait()
			if pc.get_job() == 0 then
				say_title("Silahýný seç	")
				say("")
				say("Silahýný seç: ")
				local s = select("Durendal'ýn Ýntikamcýsý (Tek El)","Ork Kasabý (Çift El) ")
				if s == 1 then
					pc.give_item2_select("21900", 1)
					item.set_attribute(0, 72, 10)
					say_title("Baþarýlý! ")
					say(" ")
					say_reward("Yeni Silahýn: ")
					say_item_vnum(21900)
					set_state(lv10)
				elseif s == 2 then
					pc.give_item2_select("21903", 1)
					item.set_attribute(0, 72, 10)
					say_title("Baþarýlý! ")
					say("")
					say_reward("Yeni Silahýn: ")
					say_item_vnum(21903)
					set_state(lv10)
				end
			elseif pc.get_job() == 1 then
				say_title("Silahýný seç ")
				say("")
				say("Silahýný seç: ")
				local s = select("Katliam Kürdaný (Býçak)","Hayal Kapaný (Yay) ")
				if s == 1 then
					pc.give_item2_select("21901", 1)
					item.set_attribute(0, 72, 10)
					say_title("Baþarýlý! ")
					say("")
					say_reward("Yeni Silahýn: ")
					say_item_vnum(21901)
					set_state(lv10)
				elseif s == 2 then
					pc.give_item2_select("21902", 1)
					item.set_attribute(0, 72, 10)
					say_title("Baþarýlý! ")
					say("")
					say_reward("Yeni Silahýn: ")
					say_item_vnum(21902)
					set_state(lv10)
				end
			elseif pc.get_job() == 2 then
				pc.give_item2_select("21900", 1)
				item.set_attribute(0, 72, 10)
				say_title("Baþarýlý! ")
				say("")
				say_reward("Yeni Silahýn: ")
				say_item_vnum(21900)
				set_state(lv10)
			elseif pc.get_job() == 3 then
				say_title("Silahýný seç ")
				say("")
				say("Silahýný seç: ")
				local s = select("Elf Öpücüðü (Çan)","Dul Ýntikamcý (Yelpaze) ")
				if s == 1 then
					pc.give_item2_select("21904", 1)
					item.set_attribute(0, 72, 10)
					say_title("Baþarýlý! ")
					say("")
					say_reward("Yeni Silahýn: ")
					say_item_vnum(21904)
					set_state(lv10)
				elseif s == 2 then
					pc.give_item2_select("21905", 1)
					item.set_attribute(0, 72, 10)
					say_title("Baþarýlý! ")
					say("")
					say_reward("Yeni Silahýn: ")
					say_item_vnum(21905)
					set_state(lv10)
				end
			elseif pc.get_job() == 4 then
				pc.give_item2_select("21906", 1)
				item.set_attribute(0, 72, 10)
				say_title("Baþarýlý! ")
				say("")
				say_reward("Yeni Silahýn: ")
				say_item_vnum(21906)
				set_state(lv10)
			end
		end
	end
	state lv10 begin
		when login or levelup begin
			if pc.get_level() >= 10 then
				send_letter("Genç kahramanlar için silah ")
			end
		end
		
		when button or info begin
			say_title("Genç kahramanlar için silahlar ")
			say("")
			say("Genç kahraman en cesur savaþçý olarak nam saldýn ")
			say("ama hala tecrübe ve güce ihtiyacýn var. Ejderha ")
			say("Tanrýsý bu krallýðýn umudu olarak seni koruyup ")
			say("kollayacak ve sana maceralarýnda belli bir süre ")
			say("kullanabileceðin bir silah sunacak. ")
			wait()
			if pc.get_job() == 0 then
				say_title("Silahýný seç ")
				say("")
				say("Silahýný seç: ")
				local s = select("Kavurucu Öfke (Tek El)","Obsidyen Çekici (Çift El) ")
				if s == 1 then
					pc.give_item2_select("21910", 1)
					item.set_attribute(0, 72, 10)
					say_title("Baþarýlý! ")
					say("")
					say_reward("Yeni Silahýn: ")
					say_item_vnum(21910)
					set_state(lv20)
				elseif s == 2 then
					pc.give_item2_select("21913", 1)
					item.set_attribute(0, 72, 10)
					say_title("Baþarýlý! ")
					say("")
					say_reward("Yeni Silahýn: ")
					say_item_vnum(21913)
					set_state(lv20)
				end
			elseif pc.get_job() == 1 then
				say_title("Silahýný seç ")
				say("")
				say("Silahýný seç: ")
				local s = select("Elf Pençesi (Býçak)","Aðýt (Yay) ")
				if s == 1 then
					pc.give_item2_select("21911", 1)
					item.set_attribute(0, 72, 10)
					say_title("Baþarýlý! ")
					say("")
					say_reward("Yeni Silahýn: ")
					say_item_vnum(21911)
					set_state(lv20)
				elseif s == 2 then
					pc.give_item2_select("21912", 1)
					item.set_attribute(0, 72, 10)
					say_title("Baþarýlý! ")
					say("")
					say_reward("Yeni Silahýn: ")
					say_item_vnum(21912)
					set_state(lv20)
				end
			elseif pc.get_job() == 2 then
				pc.give_item2_select("21910", 1)
				item.set_attribute(0, 72, 10)
				say_title("Baþarýlý! ")
				say("")
				say_reward("Yeni Silahýn: ")
				say_item_vnum(21910)
				set_state(lv20)
			elseif pc.get_job() == 3 then
				say_title("Silahýný seç ")
				say("")
				say("Silahýný seç: ")
				local s = select("Valkür Çaðrýsý (Çan)","Sessiz Lanet (Yelpaze) ")
				if s == 1 then
					pc.give_item2_select("21914", 1)
					item.set_attribute(0, 72, 10)
					say_title("Baþarýlý! ")
					say("")
					say_reward("Yeni Silahýn: ")
					say_item_vnum(21914)
					set_state(lv20)
				elseif s == 2 then
					pc.give_item2_select("21915", 1)
					item.set_attribute(0, 72, 10)
					say_title("Baþarýlý! ")
					say("")
					say_reward("Yeni Silahýn: ")
					say_item_vnum(21915)
					set_state(lv20)
				end
			elseif pc.get_job() == 4 then
				pc.give_item2_select("21916", 1)
				item.set_attribute(0, 72, 10)
				say_title("Baþarýlý! ")
				say("")
				say_reward("Yeni Silahýn: ")
				say_item_vnum(21916)
				set_state(lv20)
			end
		end
	end			
	state lv20 begin
		when login or levelup begin
			if pc.get_level() >= 20 then
				send_letter("Genç kahramanlar için silah ")
			end
		end
		
		when button or info begin
			say_title("Genç kahramanlar için silahlar ")
			say("")
			say("Genç kahraman en cesur savaþçý olarak nam saldýn ")
			say("ama hala tecrübe ve güce ihtiyacýn var. Ejderha ")
			say("Tanrýsý bu krallýðýn umudu olarak seni koruyup ")
			say("kollayacak ve sana maceralarýnda belli bir süre ")
			say("kullanabileceðin bir silah sunacak. ")
			wait()
			if pc.get_job() == 0 then
				say_title("Silahýný seç ")
				say("")
				say("Silahýný seç: ")
				local s = select("Kader Kýlýcý (Tek El)","Kan Anlaþmasý (Çift El) ")
				if s == 1 then
					pc.give_item2_select("21920", 1)
					item.set_attribute(0, 72, 10)
					say_title("Baþarýlý! ")
					say("")
					say_reward("Yeni Silahýn: ")
					say_item_vnum(21920)
					set_state(lv30)
				elseif s == 2 then
					pc.give_item2_select("21923", 1)
					item.set_attribute(0, 72, 10)
					say_title("Baþarýlý! ")
					say("")
					say_reward("Yeni Silahýn: ")
					say_item_vnum(21923)
					set_state(lv30)
				end
			elseif pc.get_job() == 1 then
				say_title("Silahýný seç ")
				say("")
				say("Silahýný seç: ")
				local s = select("Rüzgar Þiþi (Býçak)","Ejderha Nefesi (Yay) ")
				if s == 1 then
					pc.give_item2_select("21921", 1)
					item.set_attribute(0, 72, 10)
					say_title("Baþarýlý! ")
					say("")
					say_reward("Yeni Silahýn: ")
					say_item_vnum(21921)
					set_state(lv30)
				elseif s == 2 then
					pc.give_item2_select("21922", 1)
					item.set_attribute(0, 72, 10)
					say_title("Baþarýlý! ")
					say("")
					say_reward("Yeni Silahýn: ")
					say_item_vnum(21922)
					set_state(lv30)
				end
			elseif pc.get_job() == 2 then
				pc.give_item2_select("21920", 1)
				item.set_attribute(0, 72, 10)
				say_title("Baþarýlý! ")
				say("")
				say_reward("Yeni Silahýn: ")
				say_item_vnum(21920)
				set_state(lv30)
			elseif pc.get_job() == 3 then
				say_title("Silahýný seç ")
				say("")
				say("Silahýný seç: ")
				local s = select("Fýrtýna Çaðrýsý (Çan)","Gölge Dansçýsý (Yelpaze) ")
				if s == 1 then
					pc.give_item2_select("21924", 1)
					item.set_attribute(0, 72, 10)
					say_title("Baþarýlý! ")
					say("")
					say_reward("Yeni Silahýn: ")
					say_item_vnum(21924)
					set_state(lv30)
				elseif s == 2 then
					pc.give_item2_select("21925", 1)
					item.set_attribute(0, 72, 10)
					say_title("Baþarýlý! ")
					say("")
					say_reward("Yeni Silahýn: ")
					say_item_vnum(21925)
					set_state(lv30)
				end
			elseif pc.get_job() == 4 then
				pc.give_item2_select("21926", 1)
				item.set_attribute(0, 72, 10)
				say_title("Baþarýlý! ")
				say("")
				say_reward("Yeni Silahýn: ")
				say_item_vnum(21926)
				set_state(lv30)
			end
		end
	end
	state lv30 begin
		when login or levelup begin
			if pc.get_level() >= 30 then
				send_letter("Genç kahramanlar için silah ")
			end
		end
		
		when button or info begin
			say_title("Genç kahramanlar için silahlar ")
			say("")
			say("Genç kahraman en cesur savaþçý olarak nam saldýn ")
			say("ama hala tecrübe ve güce ihtiyacýn var. Ejderha ")
			say("Tanrýsý bu krallýðýn umudu olarak seni koruyup ")
			say("kollayacak ve sana maceralarýnda belli bir süre ")
			say("kullanabileceðin bir silah sunacak. ")
			wait()
			if pc.get_job() == 0 then
				say_title("Silahýný seç ")
				say("")
				say("Silahýný seç: ")
				local s = select("Ruh Hýrsýzý (Tek El)","Karar (Çift El) ")
				if s == 1 then
					pc.give_item2_select("21930", 1)
					item.set_attribute(0, 72, 10)
					say_title("Baþarýlý! ")
					say("")
					say_reward("Yeni Silahýn: ")
					say_item_vnum(21930)
					set_state(lv40)
				elseif s == 2 then
					pc.give_item2_select("21933", 1)
					item.set_attribute(0, 72, 10)
					say_title("Baþarýlý! ")
					say("")
					say_reward("Yeni Silahýn: ")
					say_item_vnum(21933)
					set_state(lv40)
				end
			elseif pc.get_job() == 1 then
				say_title("Silahýný seç ")
				say("")
				say("Silahýný seç: ")
				local s = select("Ruh Oymacýsý (Býçak)","Fýrtýna Elçisi (Yay) ")
				if s == 1 then
					pc.give_item2_select("21931", 1)
					item.set_attribute(0, 72, 10)
					say_title("Baþarýlý! ")
					say("")
					say_reward("Yeni Silahýn: ")
					say_item_vnum(21931)
					set_state(lv40)
				elseif s == 2 then
					pc.give_item2_select("21932", 1)
					item.set_attribute(0, 72, 10)
					say_title("Baþarýlý! ")
					say("")
					say_reward("Yeni Silahýn: ")
					say_item_vnum(21932)
					set_state(lv40)
				end
			elseif pc.get_job() == 2 then
				pc.give_item2_select("21930", 1)
				item.set_attribute(0, 72, 10)
				say_title("Baþarýlý! ")
				say("")
				say_reward("Yeni Silahýn: ")
				say_item_vnum(21930)
				set_state(lv40)
			elseif pc.get_job() == 3 then
				say_title("Silahýný seç ")
				say("")
				say("Silahýný seç: ")
				local s = select("Gürültü Yankýsý (Çan)","Rüzgar Þarkýsý (Yelpaze) ")
				if s == 1 then
					pc.give_item2_select("21934", 1)
					item.set_attribute(0, 72, 10)
					say_title("Baþarýlý! ")
					say("")
					say_reward("Yeni Silahýn: ")
					say_item_vnum(21934)
					set_state(lv40)
				elseif s == 2 then
					pc.give_item2_select("21935", 1)
					item.set_attribute(0, 72, 10)
					say_title("Baþarýlý! ")
					say("")
					say_reward("Yeni Silahýn: ")
					say_item_vnum(21935)
					set_state(lv40)
				end
			elseif pc.get_job() == 4 then
				pc.give_item2_select("21936", 1)
				item.set_attribute(0, 72, 10)
				say_title("Baþarýlý! ")
				say("")
				say_reward("Yeni Silahýn: ")
				say_item_vnum(21936)
				set_state(lv40)
			end
		end
	end			
	state lv40 begin
		when login or levelup begin
			if pc.get_level() >= 40 then
				send_letter("Genç kahramanlar için silah ")
			end
		end
		
		when button or info begin
			say_title("Genç kahramanlar için silahlar ")
			say("")
			say("Genç kahraman en cesur savaþçý olarak nam saldýn ")
			say("ama hala tecrübe ve güce ihtiyacýn var. Ejderha ")
			say("Tanrýsý bu krallýðýn umudu olarak seni koruyup ")
			say("kollayacak ve sana maceralarýnda belli bir süre ")
			say("kullanabileceðin bir silah sunacak. ")
			wait()
			if pc.get_job() == 0 then
				say_title("Silahýný seç ")
				say("")
				say("Silahýný seç: ")
				local s = select("Çelik Þarkýsý (Tek El)","Kýyamet (Çift El) ")
				if s == 1 then
					pc.give_item2_select("21940", 1)
					item.set_attribute(0, 72, 10)
					say_title("Baþarýlý! ")
					say("")
					say_reward("Yeni Silahýn: ")
					say_item_vnum(21940)
					set_state(lv50)
				elseif s == 2 then
					pc.give_item2_select("21943", 1)
					item.set_attribute(0, 72, 10)
					say_title("Baþarýlý! ")
					say("")
					say_reward("Yeni Silahýn: ")
					say_item_vnum(21943)
					set_state(lv50)
				end
			elseif pc.get_job() == 1 then
				say_title("Silahýný seç ")
				say("")
				say("Silahýný seç: ")
				local s = select("Ay Iþýðý Neþteri (Býçak)","Gölge Yapraðý (Yay) ")
				if s == 1 then
					pc.give_item2_select("21941", 1)
					item.set_attribute(0, 72, 10)
					say_title("Baþarýlý! ")
					say("")
					say_reward("Yeni Silahýn: ")
					say_item_vnum(21941)
					set_state(lv50)
				elseif s == 2 then
					pc.give_item2_select("21942", 1)
					item.set_attribute(0, 72, 10)
					say_title("Baþarýlý! ")
					say("")
					say_reward("Yeni Silahýn: ")
					say_item_vnum(21942)
					set_state(lv50)
				end
			elseif pc.get_job() == 2 then
				pc.give_item2_select("21940", 1)
				item.set_attribute(0, 72, 10)
				say_title("Baþarýlý! ")
				say("")
				say_reward("Yeni Silahýn: ")
				say_item_vnum(21940)
				set_state(lv50)
			elseif pc.get_job() == 3 then
				say_title("Silahýný seç ")
				say("")
				say("Silahýný seç: ")
				local s = select("Onur Sedasý (Çan)","Kuzgun Pençesi (Yelpaze) ")
				if s == 1 then
					pc.give_item2_select("21944", 1)
					item.set_attribute(0, 72, 10)
					say_title("Baþarýlý! ")
					say("")
					say_reward("Yeni Silahýn: ")
					say_item_vnum(21944)
					set_state(lv50)
				elseif s == 2 then
					pc.give_item2_select("21945", 1)
					item.set_attribute(0, 72, 10)
					say_title("Baþarýlý! ")
					say("")
					say_reward("Yeni Silahýn: ")
					say_item_vnum(21945)
					set_state(lv50)
				end
			elseif pc.get_job() == 4 then
				pc.give_item2_select("21946", 1)
				item.set_attribute(0, 72, 10)
				say_title("Baþarýlý! ")
				say("")
				say_reward("Yeni Silahýn: ")
				say_item_vnum(21946)
				set_state(lv50)
			end
		end
	end	
	state lv50 begin
		when login or levelup begin
			if pc.get_level() >= 50 then
				send_letter("Genç kahramanlar için silah ")
			end
		end
		
		when button or info begin
			say_title("Genç kahramanlar için silahlar ")
			say("")
			say("Genç kahraman en cesur savaþçý olarak nam saldýn ")
			say("ama hala tecrübe ve güce ihtiyacýn var. Ejderha ")
			say("Tanrýsý bu krallýðýn umudu olarak seni koruyup ")
			say("kollayacak ve sana maceralarýnda belli bir süre ")
			say("kullanabileceðin bir silah sunacak. ")
			wait()
			if pc.get_job() == 0 then
				say_title("Silahýný seç ")
				say("")
				say("Silahýný seç: ")
				local s = select("Balmung Mirasý (Tek El)","Gök Gürültüsü Darbesi (Çift El) ")
				if s == 1 then
					pc.give_item2_select("21950", 1)
					item.set_attribute(0, 72, 10)
					say_title("Baþarýlý! ")
					say("")
					say_reward("Yeni Silahýn: ")
					say_item_vnum(21950)
					set_state(lv60)
				elseif s == 2 then
					pc.give_item2_select("21953", 1)
					item.set_attribute(0, 72, 10)
					say_title("Baþarýlý! ")
					say("")
					say_reward("Yeni Silahýn: ")
					say_item_vnum(21953)
					set_state(lv60)
				end
			elseif pc.get_job() == 1 then
				say_title("Silahýný seç ")
				say("")
				say("Silahýný seç: ")
				local s = select("Ölüm Perisi (Býçak)","Titan Fýsýltýsý (Yay) ")
				if s == 1 then
					pc.give_item2_select("21951", 1)
					item.set_attribute(0, 72, 10)
					say_title("Baþarýlý! ")
					say("")
					say_reward("Yeni Silahýn: ")
					say_item_vnum(21951)
					set_state(lv60)
				elseif s == 2 then
					pc.give_item2_select("21952", 1)
					item.set_attribute(0, 72, 10)
					say_title("Baþarýlý! ")
					say("")
					say_reward("Yeni Silahýn: ")
					say_item_vnum(21952)
					set_state(lv60)
				end
			elseif pc.get_job() == 2 then
				pc.give_item2_select("21950", 1)
				item.set_attribute(0, 72, 10)
				say_title("Baþarýlý! ")
				say("")
				say_reward("Yeni Silahýn: ")
				say_item_vnum(21950)
				set_state(lv60)
			elseif pc.get_job() == 3 then
				say_title("Silahýný seç ")
				say("")
				say("Silahýný seç: ")
				local s = select("Çýnlayan Ýntikam (Çan)","Belialin Savaþ Yelpazesi (Yelpaze) ")
				if s == 1 then
					pc.give_item2_select("21954", 1)
					item.set_attribute(0, 72, 10)
					say_title("Baþarýlý! ")
					say("")
					say_reward("Yeni Silahýn: ")
					say_item_vnum(21954)
					set_state(lv60)
				elseif s == 2 then
					pc.give_item2_select("21955", 1)
					item.set_attribute(0, 72, 10)
					say_title("Baþarýlý! ")
					say("")
					say_reward("Yeni Silahýn: ")
					say_item_vnum(21955)
					set_state(lv60)
				end
			elseif pc.get_job() == 4 then
				pc.give_item2_select("21956", 1)
				item.set_attribute(0, 72, 10)
				say_title("Baþarýlý! ")
				say("")
				say_reward("Yeni Silahýn: ")
				say_item_vnum(21956)
				set_state(lv60)
			end
		end
	end		
	state lv60 begin
		when login or levelup begin
			if pc.get_level() >= 60 then
				send_letter("Genç kahramanlar için silah ")
			end
		end
		
		when button or info begin
			say_title("Genç kahramanlar için silahlar ")
			say("")
			say("Genç kahraman en cesur savaþçý olarak nam saldýn ")
			say("ama hala tecrübe ve güce ihtiyacýn var. Ejderha ")
			say("Tanrýsý bu krallýðýn umudu olarak seni koruyup ")
			say("kollayacak ve sana maceralarýnda belli bir süre ")
			say("kullanabileceðin bir silah sunacak. ")
			wait()
			if pc.get_job() == 0 then
				say_title("Silahýný seç ")
				say("")
				say("Silahýný seç: ")
				local s = select("Askalahel (Tek El)","Tanrýsal Karanlýk (Çift El) ")
				if s == 1 then
					pc.give_item2_select("21960", 1)
					item.set_attribute(0, 72, 10)
					say_title("Baþarýlý! ")
					say("")
					say_reward("Yeni Silahýn: ")
					say_item_vnum(21960)
					set_state(lv70)
				elseif s == 2 then
					pc.give_item2_select("21963", 1)
					item.set_attribute(0, 72, 10)
					say_title("Baþarýlý! ")
					say("")
					say_reward("Yeni Silahýn: ")
					say_item_vnum(21963)
					set_state(lv70)
				end
			elseif pc.get_job() == 1 then
				say_title("Silahýný seç ")
				say("")
				say("Silahýný seç: ")
				local s = select("Öfkeli Diken (Býçak)","Tanrýsal Bað (Yay) ")
				if s == 1 then
					pc.give_item2_select("21961", 1)
					item.set_attribute(0, 72, 10)
					say_title("Baþarýlý! ")
					say("")
					say_reward("Yeni Silahýn: ")
					say_item_vnum(21961)
					set_state(lv70)
				elseif s == 2 then
					pc.give_item2_select("21962", 1)
					item.set_attribute(0, 72, 10)
					say_title("Baþarýlý! ")
					say("")
					say_reward("Yeni Silahýn: ")
					say_item_vnum(21962)
					set_state(lv70)
				end
			elseif pc.get_job() == 2 then
				pc.give_item2_select("21960", 1)
				say_title("Baþarýlý! ")
				say("")
				say_reward("Yeni Silahýn: ")
				say_item_vnum(21960)
				set_state(lv70)
			elseif pc.get_job() == 3 then
				say_title("Silahýný seç ")
				say("")
				say("Silahýný seç: ")
				local s = select("Son Darbe (Çan)","Nexus (Yelpaze) ")
				if s == 1 then
					pc.give_item2_select("21964", 1)
					item.set_attribute(0, 72, 10)
					say_title("Baþarýlý! ")
					say("")
					say_reward("Yeni Silahýn: ")
					say_item_vnum(21964)
					set_state(lv70)
				elseif s == 2 then
					pc.give_item2_select("21965", 1)
					item.set_attribute(0, 72, 10)
					say_title("Baþarýlý! ")
					say("")
					say_reward("Yeni Silahýn: ")
					say_item_vnum(21965)
					set_state(lv70)
				end
			elseif pc.get_job() == 4 then
				pc.give_item2_select("21966", 1)
				item.set_attribute(0, 72, 10)
				say_title("Baþarýlý! ")
				say("")
				say_reward("Yeni Silahýn: ")
				say_item_vnum(21966)
				set_state(lv70)
			end
		end
	end		
	state lv70 begin
		when login or levelup begin
			if pc.get_level() >= 70 then
				send_letter("Genç kahramanlar için silah ")
			end
		end
		
		when button or info begin
			say_title("Genç kahramanlar için silahlar ")
			say("")
			say("Genç kahraman en cesur savaþçý olarak nam saldýn ")
			say("ama hala tecrübe ve güce ihtiyacýn var. Ejderha ")
			say("Tanrýsý bu krallýðýn umudu olarak seni koruyup ")
			say("kollayacak ve sana maceralarýnda belli bir süre ")
			say("kullanabileceðin bir silah sunacak. ")
			wait()
			if pc.get_job() == 0 then
				say_title("Silahýný seç ")
				say("")
				say("Silahýný seç: ")
				local s = select("Merasim (Tek El)","Brahindul (Çift El) ")
				if s == 1 then
					pc.give_item2_select("21970", 1)
					item.set_attribute(0, 72, 10)
					say_title("Baþarýlý! ")
					say("")
					say_reward("Yeni Silahýn: ")
					say_item_vnum(21970)
					set_state(__end__)
				elseif s == 2 then
					pc.give_item2_select("21973", 1)
					item.set_attribute(0, 72, 10)
					say_title("Baþarýlý! ")
					say("")
					say_reward("Yeni Silahýn: ")
					say_item_vnum(21973)
					set_state(__end__)
				end
			elseif pc.get_job() == 1 then
				say_title("Silahýný seç ")
				say("")
				say("Silahýný seç: ")
				local s = select("Kral Katili (Býçak)","Ependrion (Yay) ")
				if s == 1 then
					pc.give_item2_select("21971", 1)
					item.set_attribute(0, 72, 10)
					say_title("Baþarýlý! ")
					say("")
					say_reward("Yeni Silahýn: ")
					say_item_vnum(21971)
					set_state(__end__)
				elseif s == 2 then
					pc.give_item2_select("21972", 1)
					item.set_attribute(0, 72, 10)
					say_title("Baþarýlý! ")
					say("")
					say_reward("Yeni Silahýn: ")
					say_item_vnum(21972)
					set_state(__end__)
				end
			elseif pc.get_job() == 2 then
				pc.give_item2_select("21970", 1)
				item.set_attribute(0, 72, 10)
				say_title("Baþarýlý! ")
				say("")
				say_reward("Yeni Silahýn: ")
				say_item_vnum(21970)
				set_state(__end__)
			elseif pc.get_job() == 3 then
				say_title("Silahýný seç ")
				say("")
				say("Silahýný seç: ")
				local s = select("Ölüm Öpücüðü (Çan)","Kor Glash (Yelpaze) ")
				if s == 1 then
					pc.give_item2_select("21974", 1)
					item.set_attribute(0, 72, 10)
					say_title("Baþarýlý! ")
					say("")
					say_reward("Yeni Silahýn: ")
					say_item_vnum(21974)
					set_state(__end__)
				elseif s == 2 then
					pc.give_item2_select("21975", 1)
					item.set_attribute(0, 72, 10)
					say_title("Baþarýlý! ")
					say("")
					say_reward("Yeni Silahýn: ")
					say_item_vnum(21975)
					set_state(__end__)
				end
			elseif pc.get_job() == 4 then
				pc.give_item2_select("21976", 1)
				item.set_attribute(0, 72, 10)
				say_title("Baþarýlý! ")
				say("")
				say_reward("Yeni Silahýn: ")
				say_item_vnum(21976)
				set_state(__end__)
			end
		end
	end
	state __end__ begin
	end
end