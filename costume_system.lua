quest costume_system begin
	state start begin
		----------------------------------------------------------- Khaizen
		when 31956.use begin-- Sandık Kodu -- Erkek için
		if pc.count_item(31956) < 1 then 
		say_red("Bug Kontrol") 
		say_yellow("Envanterindeki sandık kaybolmuş.") 
		return 
		end
		pc.remove_item("31956",1)--- Erkek Kostüm Sandığını Sil
		local a1 = number(1,12)
		if a1 == 1 then
		pc.give_item2("41588",1)--
		elseif a1 == 2 then
		pc.give_item2("41589",1)--
		elseif a1 == 3 then
		pc.give_item2("41604",1)--
		elseif a1 == 4 then
		pc.give_item2("41605",1)--
		elseif a1 == 5 then
		pc.give_item2("41532",1)--
		elseif a1 == 6 then
		pc.give_item2("41533",1)--
		elseif a1 == 7 then
		pc.give_item2("41565",1)--
		elseif a1 == 8 then
		pc.give_item2("41564",1)--
		elseif a1 == 9 then
		pc.give_item2("41516",1)--
		elseif a1 == 10 then
		pc.give_item2("41517",1)--
		elseif a1 == 11 then
		pc.give_item2("41500",1)--
		elseif a1 == 12 then
		pc.give_item2("41501",1)--
		end
		end
		----------------------------------------------------------- Khaizen
		when 31957.use begin-- Sandık Kodu -- Kadın için
		if pc.count_item(31957) < 1 then 
		say_red("Bug Kontrol") 
		say_yellow("Envanterindeki sandık kaybolmuş.") 
		return
		end
		pc.remove_item("31957",1)-- Kadın Kostüm Sandığını Sil
		local a1 = number(1,12)
		if a1 == 1 then
		pc.give_item2("41591",1)--
		elseif a1 == 2 then
		pc.give_item2("41590",1)--
		elseif a1 == 3 then
		pc.give_item2("41606",1)--
		elseif a1 == 4 then
		pc.give_item2("41607",1)--
		elseif a1 == 5 then
		pc.give_item2("41502",1)--
		elseif a1 == 6 then
		pc.give_item2("41503",1)--
		elseif a1 == 7 then
		pc.give_item2("41534",1)--
		elseif a1 == 8 then
		pc.give_item2("41535",1)--
		elseif a1 == 9 then
		pc.give_item2("41566",1)--
		elseif a1 == 10 then
		pc.give_item2("41567",1)--
		elseif a1 == 11 then
		pc.give_item2("41518",1)--
		elseif a1 == 12 then
		pc.give_item2("41519",1)--
		end
		end
		----------------------------------------------------------- Khaizen
		----------------------------------------------------------- Khaizen
		when 31958.use begin-- Sandık Kodu -- Erkek için
		if pc.count_item(31958) < 1 then 
		say_red("Bug Kontrol") 
		say_yellow("Envanterindeki sandık kaybolmuş.") 
		return
		end
		pc.remove_item("31958",1)-- Erkek Başlık Sandığını Sil
		local a1 = number(1,10)
		if a1 == 1 then
		pc.give_item2("45278",1)--
		elseif a1 == 2 then
		pc.give_item2("45279",1)--
		elseif a1 == 3 then
		pc.give_item2("45294",1)--
		elseif a1 == 4 then
		pc.give_item2("45295",1)--
		elseif a1 == 5 then
		pc.give_item2("45238",1)--
		elseif a1 == 6 then
		pc.give_item2("45239",1)--
		elseif a1 == 7 then
		pc.give_item2("45254",1)--
		elseif a1 == 8 then
		pc.give_item2("45255",1)--
		elseif a1 == 9 then
		pc.give_item2("45210",1)--
		elseif a1 == 10 then
		pc.give_item2("45211",1)--
		end
		end
		----------------------------------------------------------- Khaizen
		----------------------------------------------------------- Khaizen
		when 31959.use begin-- Sandık Kodu -- Kadın için
		if pc.count_item(31959) < 1 then 
		say_red("Bug Kontrol") 
		say_yellow("Envanterindeki sandık kaybolmuş.") 
		return
		end
		pc.remove_item("31959",1)-- Kadın Başlık Sandığını Sil
		local a1 = number(1,10)
		if a1 == 1 then
		pc.give_item2("45280",1)--
		elseif a1 == 2 then
		pc.give_item2("45281",1)--
		elseif a1 == 3 then
		pc.give_item2("45296",1)--
		elseif a1 == 4 then
		pc.give_item2("45297",1)--
		elseif a1 == 5 then
		pc.give_item2("45240",1)--
		elseif a1 == 6 then
		pc.give_item2("45241",1)--
		elseif a1 == 7 then
		pc.give_item2("45256",1)--
		elseif a1 == 8 then
		pc.give_item2("45257",1)--
		elseif a1 == 9 then
		pc.give_item2("45212",1)--
		elseif a1 == 10 then
		pc.give_item2("45213",1)--
		end
		end
		----------------------------------------------------------- Khaizen
		end
	end