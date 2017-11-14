quest gmservis begin
	state start begin
		when 40002.use begin
		if pc.is_gm() == false then
			say_title("O painel de administração está bloqueado.")
			say("Você não tem acesso ao painel de administração ...")
			return
		end
		say_title("Painel de Gerenciamento ")
		local sec123 = select("Eventos","Open Droplets","Anúncios de lançamento ","Cancelar")
			if sec123 == 1 then
					local event = select("Ramazan Etkinliði","Ay Iþýðý Etkinliði ","Kostüm Etkinliði","(ETP) Etkinliði","Binek ve Parþomen Etkinliði","Futbol Topu Etkinliði","Bulmaca Kutusu Etkinliði","Kapat ")
					if event == 1 then
					local event2 = select("Ramazan Etkinliði baþlat","Bereket Meyvesi ödülleri","Ramazan etkinliði bitir","Tabak drobu aç ","Hiçbir þey")
					if event2 == 1 then
					notice_all("Ramazan etkinlikleri baþladý!")
					notice_all("Tarihçi'yi ziyaret et, Niyetli Vatandaþ'a bir iyilik yap ya da")
					notice_all("yaratýklarý öldürüp simitleri al!")
					game.set_event_flag("ramazan",1)
					elseif event2 == 2 then
					notice_all("Bereket meyvelerini Tarihçi'ye götür!")
					notice_all("Ödülünü al!")
					game.set_event_flag("ramazan",2)
					elseif event2 == 3 then
					notice_all("Ramazan etkinlikleri sona erdi.")
					game.set_event_flag("ramazan",0)
					elseif event2 == 4 then
					game.set_event_flag("tabak",1)
					notice_all("Baðýþ Tabaðý düþürmek için Metin Taþlarýný ve patronlarý yok et!")
					return
					else
					return
					end
					elseif event == 2 then
					local panpa05 = select("Ay Iþýðý etkinliði baþlat","Ay Iþýðý etkinliði bitir","Vazgeç ")
					if panpa05 == 1 then
					notice_all("Ay Iþýðý Sandýðý etkinliði baþladý!")
					notice_all("Ay Iþýðý Sandýðý'ný tüm slotlardan ele geçirebilirsin!")
					game.set_event_flag("ayisigi",1)
					elseif panpa05 == 2 then
					game.set_event_flag("ayisigi",0)
					notice_all("Ay Iþýðý Sandýðý etkinliði sona erdi.")
					elseif panpa05 == 3 then
					return
					end
					elseif event == 3 then
					local event5 = select("Kostüm drop aç ","Kostüm drop kapat","Hiçbir þey")
					if event5 == 1 then
					notice_all("Metin Taþlarýný yok et ve Olimpiyat Kostümü kazan!")
					game.set_event_flag("dressup",1)
					elseif event5 == 2 then
					notice_all("Kostüm eventi bitmiþtir.")
					game.set_event_flag("dressup",0)					
					elseif event5 == 3 then			
					return
					end
					elseif event == 4 then
					local panpa = select("ETP etkinliði baþlat","ETP etkinliði bitir","Vazgeç ")
					if panpa == 1 then
					notice_all("ETP etkinliði baþladý!")
					notice_all("ETP'yi +30 level ve leveline uygun tüm slotlardan ele geçirebilirsin!")
					game.set_event_flag("etp_dusur",1)
					elseif panpa == 2 then
					game.set_event_flag("etp_dusur",0)
					notice_all("ETP etkinliði sona erdi.")
					elseif panpa == 3 then
					return
					end
					elseif event == 5 then
					local panpa09 = select("Binek ve Parþomen baþlat","Binek ve Parþomen bitir","Vazgeç ")
					if panpa09 == 1 then
					notice_all("Binek ve Parþomen etkinliði baþladý!")
					notice_all("Binek ve Parþomen leri tüm slotlardan ele geçirebilirsin!")
					game.set_event_flag("binekveparsomen",1)
					elseif panpa09 == 2 then
					game.set_event_flag("binekveparsomen",0)
					notice_all("Binek ve Parþomen etkinliði sona erdi.")
					elseif panpa09 == 3 then
					return
					end
					elseif event == 6 then
					local panpa5 = select("Futbol Topu etkinliði baþlat","Futbol Topu etkinliði bitir","Hiçbir þey")
					if panpa5 == 1 then				
					game.set_event_flag("futboltopu",1)
					notice_all("Futbol Topu etkinliði baþladý!")
					notice_all("Futbol Topu'nu tüm slotlardan ele geçirebilirsin!")
					elseif panpa5 == 2 then
					game.set_event_flag("futboltopu",0)
					notice_all("Futbol Topu etkinliði sona erdi.")
					elseif panpa5 == 3 then
					return
					end
					elseif event == 7 then
					local panpa99 = select("Bulmaca Kutusu etkinliði baþlat","Bulmaca Kutusu etkinliði bitir","Hiçbir þey")
					if panpa99 == 1 then				
					game.set_event_flag("kids_day_quiz",1)
					notice_all("Bulmaca Kutusu etkinliði baþladý!")
					notice_all("Bulmaca Kutusunu tüm slotlardan ele geçirebilirsin!")
					elseif panpa99 == 2 then
					game.set_event_flag("kids_day_quiz",0)
					notice_all("Bulmaca Kutusu etkinliði sona erdi.")
					elseif panpa99 == 3 then
					return
					end
					elseif event == 8 then
					return
				elseif s == 8 then
					return
					end
					end
			if sec123 == 2 then	
			say_title("Yönetim Paneli  ")
			say("Droplarý otomatik olarak ; ")
			say("baþlatmak istediðine eminmisin? ")
			say_yellow("Yang Drop ; %100")
			say_yellow("Exp Drop ; %100")
			local dr1 = select("Evet", "Hayýr")
			if dr1 == 1 then	
			__give_empire_priv(0, 2, 100, 60*60*24*15) 
			__give_empire_priv(0, 4, 100, 60*60*24*15)	
			end
			if dr1 == 2 then
			return
			end
			end
			if sec123 == 3 then		
			say_title("Yönetim Paneli  ")
			say("Duyurularý otomatik baþlatmak istediðine eminmisin ")
			local d1 = select("Evet", "Hayýr")
			if d1 == 1 then
			clear_server_timer("auto_notice")
			server_loop_timer("auto_notice",1)
			chat("Duyurular zamaný gelince baþlayacak.")						
			end
			if d1 == 2 then
			return
			end
			end	
			if sec123 == 4 then	
			return				
			end
			end
		when auto_notice.server_timer begin
		local time = os.date("%X")
		local day = os.date("%w")
			if time == "00:00:00" or time == "04:00:00" or time == "08:00:00" or time == "12:00:00" or time == "16:00:00" or time == "19:59:00" then
			notice_all("Hesap güvenliðiniz bizler için çok önemli ve bunun için!")
			notice_all("Ýtemlerinizi ruha baðlayýp, þifrelerinizi deðiþtirin.")
			notice_all("www.Nevi2.com harici bilmediðiniz hiç bir siteye girmeyiniz!")
			notice_all("Videon var Ep kampanyasý var gibi sözlere aldanmayýnýz!")
			end
			if time == "01:00:00" or time == "05:00:00" or time == "09:00:00" or time == "13:00:00" or time == "16:59:00" or time == "20:59:20" then
			notice_all("Hesap güvenliðiniz bizler için çok önemli ve bunun için!")
			notice_all("Ýtemlerinizi ruha baðlayýp, þifrelerinizi deðiþtirin.")
			notice_all("www.Nevi2.com harici bilmediðiniz hiç bir siteye girmeyiniz!")
			notice_all("Videon var Ep kampanyasý var gibi sözlere aldanmayýnýz!")
			end
			if time == "02:00:00" or time == "06:00:00" or time == "10:00:00" or time == "14:00:00" or time == "17:59:00" or time == "21:59:00" then
			notice_all("Nevi2 resmi facebook sayfamýz sizlerle!")
			notice_all("https://www.facebook.com/Nevi2com Sayfamýzý Takip Ediniz.")
			notice_all("Sayfamýzýn hayraný ol, paylaþýmlarý kaçýrma! ")
			end
			if time == "03:00:00" or time == "07:00:00" or time == "11:00:00" or time == "14:59:00" or time == "19:00:20" or time == "22:59:00" then
			notice_all("Hesap güvenliðiniz bizler için çok önemli ve bunun için!")
			notice_all("Ýtemlerinizi ruha baðlayýp, þifrelerinizi deðiþtirin.")
			notice_all("www.Nevi2.com harici bilmediðiniz hiç bir siteye girmeyiniz!")
			notice_all("Videon var Ep kampanyasý var gibi sözlere aldanmayýnýz!")
			end
			end
			when login with pc.is_gm() begin
			chat("Bulunduðun map index: "..pc.get_map_index().."")
			chat("CH1 Ejderha Odasý Þifresi: "..game.get_event_flag("ejder_sifresi1").."")
			chat("CH2 Ejderha Odasý Þifresi: "..game.get_event_flag("ejder_sifresi2").."")
		end
	end
end	