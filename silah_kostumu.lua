quest silah_kostumu begin
	state start begin
		when 30335.use begin 
		if pc.count_item(30335) < 1 then 
			say_title("Bug Kontrol ") 
			say_kirmizi("Envanterindeki nesne kaybolmuş. ") 
			return
			end
			local nevi2secbakalim = select("Kılıç ","Hançer ","Yay ","Çift el ","Çan ","Yelpaze ","Pençe ","Kullanmak İstemiyorum. ")
			if nevi2secbakalim == 1 then
				local silah1 = select ("Kesici Diş Kılıcı ","Şeker Çubuğu Kılıcı ", "Kullanmak İstemiyorum. ")
				if silah1 == 1 then
				pc.give_item2("40108", 1)
				pc.remove_item(30335)
				else if silah1 == 2 then
				pc.give_item2("40122", 1)
				pc.remove_item(30335)
				elseif silah1 == 3 then return end
			end
			end
			if nevi2secbakalim == 2 then
				local hancer1 = select ("Kesici Diş Hançeri ","Şeker Çubuğu Hançeri ", "Kullanmak İstemiyorum. ")
				if hancer1 == 1 then
				pc.give_item2("40109", 1)
				pc.remove_item(30335)
				else if hancer1 == 2 then
				pc.give_item2("40123", 1)
				pc.remove_item(30335)
				elseif hancer1 == 3 then return end
			end
			end
			if nevi2secbakalim == 3 then
				local yay1 = select ("Kesici Diş Yayı ","Elf Yayı ", "Kullanmak İstemiyorum. ")
				if yay1 == 1 then
				pc.give_item2("40110", 1)
				pc.remove_item(30335)
				else if yay1 == 2 then
				pc.give_item2("40124", 1)
				pc.remove_item(30335)
				elseif yay1 == 3 then return end
			end
			end
			if nevi2secbakalim == 4 then
				local ciftel1 = select ("Kesici Diş Mızrağı ","Kurabiye Geniş Mızrağı ", "Kullanmak İstemiyorum. ")
				if ciftel1 == 1 then
				pc.give_item2("40111", 1)
				pc.remove_item(30335)
				else if ciftel1 == 2 then
				pc.give_item2("40125", 1)
				pc.remove_item(30335)
				elseif ciftel1 == 3 then return end
			end
			end
			if nevi2secbakalim == 5 then
				local can1 = select ("Kesici Diş Çanı ","Şeker Çubuğu Çanı ", "Kullanmak İstemiyorum. ")
				if can1 == 1 then
				pc.give_item2("40112", 1)
				pc.remove_item(30335)
				else if can1 == 2 then
				pc.give_item2("40126", 1)
				pc.remove_item(30335)
				elseif can1 == 3 then return end
			end
			end
			if nevi2secbakalim == 6 then
				local yelpaze1 = select ("Kesici Diş Yelpazesi ","Buz Yelpazesi ", "Kullanmak İstemiyorum. ")
				if yelpaze1 == 1 then
				pc.give_item2("40113", 1)
				pc.remove_item(30335)
				else if yelpaze1 == 2 then
				pc.give_item2("40127", 1)
				pc.remove_item(30335)
				elseif yelpaze1 == 3 then return end
			end
			end
			if nevi2secbakalim == 7 then
				local pence1 = select ("Kesici Diş Pençeleri ","Rudolph Pençeleri ", "Kullanmak İstemiyorum. ")
				if pence1 == 1 then
				pc.give_item2("40114", 1)
				pc.remove_item(30335)
				else if pence1 == 2 then
				pc.give_item2("40128", 1)
				pc.remove_item(30335)
				elseif pence1 == 3 then return end
			end
			end
			end
	end end