quest bk_trade begin
	state start begin
		function get_input(func)
			cmdchat("bk_trade_sys block 0")
			local input = input(cmdchat(func))
			cmdchat("bk_trade_sys break 0")
			if input == "" or string.find(string.lower(input), "nan") or string.find(string.lower(input), "nil") then
				return 0
			else
				return tostring(input)
			end
		end

		when 9004.chat."Kitaplarý nasýl takas ederim? " begin
			say("Hoþ geldin! ")
			say("Bende kitap mý takas edeceksin? Harika! Beceri ve ")
			say("ustalýk kitaplarýný her zaman alýrým. Bana bunlardan ")
			say("10 tane getirirsen sana sýfýna uygun bir beceri ")
			say("kitabý veririm. Adil bir pazarlýk, deðil mi? Ha, ")
			say("neredeyse söylemeyi unutuyordum, bu takas için ")
			say("100.000 Yang isterim.")
		end

		when 9004.chat."Kitap takas et " begin
            setskin(NOWINDOW)
			cmdchat("bk_trade_sys open 0")
		end

		when login begin
			cmdchat("bk_trade_sys qid "..q.getcurrentquestindex())
		end

		function checkflagoverflow()
			if pc.getqf("bk_miktar") > 10 or pc.getqf("bk_miktar") < 0 then
				pc.setqf("bk_miktar", 0)
			end
		end

		when button or info begin
			data = bk_trade.get_input("bk_trade_sys get 0")

			local _, count = string.gsub(data, "|", "")
			if count < 9 or count > 9 then
				syschat("(BK-1)Bilinmeyen hata. Lutfen oyun yoneticisine basvurun") -- Uygunsuz format
				return
			end

			if pc.get_money() < 100000 then
				syschat("Yeterli yang mevcut degil")
				return
			end
			if pc.count_item(50300) < 10 then
				syschat("Yeterli beceri kitabi mevcut degil")
				return
			end
			if pc.get_skill_group() == 0 then
				syschat("Henuz Cok acemisin :(")
				return
			end
			bk_trade.checkflagoverflow()


			splitData = bk_trade.split(data, '|')
			for i = 1, 10 do
				if splitData[i] == "" or string.find(string.lower(splitData[i]), "nan") or string.find(string.lower(splitData[i]), "nil") then
					syschat("(BK-2)Bilinmeyen hata. Lutfen oyun yoneticisine basvurun") -- Splitlinen icerik boþ yada uygunsuz
					return
				end

				if tonumber(splitData[i]) > 180 or tonumber(splitData[i]) < 0 then
					-- Gelen slotlar envanter slot miktarýndan farklý[min 0, max 90]
					-- Envanter sayýsýnýz 2den farklýysa 90 kýsmýna her sayfa için +45 ekleyin
					-- 4 Sayfa envanter için 180 gibi
					syschat("(BK-3)Bilinmeyen hata. Lutfen oyun yoneticisine basvurun")
					return
				end

				item.select_cell(splitData[i])
				if not item.get_id() or item.get_id() == 0 then
					syschat("Item bulunamadi> " ..splitData[i])
					return
				end

				if tostring(item.get_vnum()) != tostring(50300) then
					syschat("(BK-4)Bilinmeyen hata. Lutfen oyun yoneticisine basvurun") -- beceri kitabý vnumu deðilse iptal
					return
				end
				if tostring(item.get_count()) != tostring(1) then
					syschat("(BK-5)Bilinmeyen hata. Lutfen oyun yoneticisine basvurun") -- miktar 1 den farklýysa iptal
					return
				end

				pc.setqf("bk_miktar", pc.getqf("bk_miktar") + 1)
				item.remove()

			end

			if pc.getqf("bk_miktar") == 10 then
				local x
				if pc.get_job() <= 1 then
					x = number(1,5)
				else
					x = number(1,6)
				end
				bk_trade.give_new_book(x)
				return
			else
				syschat("(BK-6)Bilinmeyen hata. Lutfen oyun yoneticisine basvurun") -- BK Flaglarý 10dan farklý uygunsuz durum
				return
			end

		end

		function give_new_book(sock)
			local skill_list = special.active_skill_list[pc.get_job()+1][pc.get_skill_group()]
			if pc.get_money() < 100000 then
				syschat("Yeterli yang mevcut degil")
				return
			end

			pc.change_gold(-100000)
			pc.give_item2_select(50300)
			item.set_socket(0, skill_list[sock])
			pc.setqf("bk_miktar", 0)
			return
		end

		function split(command_, x)
			return bk_trade.split_(command_,x)
		end

		function split_(string_,delimiter)
			local result = { }
			local from  = 1
			local delim_from, delim_to = string.find( string_, delimiter, from  )
			while delim_from do
				table.insert( result, string.sub( string_, from , delim_from-1 ) )
				from  = delim_to + 1
				delim_from, delim_to = string.find( string_, delimiter, from  )
			end
			table.insert( result, string.sub( string_, from  ) )
			return result
		end
	end
end
