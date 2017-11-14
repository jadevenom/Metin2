quest teleport begin
	state start begin
		when login begin
			cmdchat("teleport_q "..q.getcurrentquestindex())
		end
		when button or info begin
			local idx = getinput("teleportidx")
			if idx == "1" then
				syschat("Joan Bölgesine Iþýnlanýyorsun (Sarý Krallýk)")
				pc.warp(63800,166400)
			elseif idx == "2" then
				syschat("Bokjung Bölgesine Iþýnlanýyorsun (Sarý Krallýk)")
				pc.warp(145500,240000)
			elseif idx == "3" then
				syschat("Waryong Bölgesine Iþýnlanýyorsun (Sarý Krallýk Lonca Bölgesi)")
				pc.warp(221900,9200)
			elseif idx == "4" then
				syschat("Songpa Bölgesine Iþýnlanýyorsun (Sarý Krallýk Lonca Bölgesi)")
				pc.warp(204800,204800)
			elseif idx == "5" then
				syschat("Pyungmoo Bölgsine Iþýnlanýyorsun (Mavi Krallýk)")
				pc.warp(959900,269200)
			elseif idx == "6" then
				syschat("Bakra Bölgesine Iþýnlanýyorsun (Mavi Krallýk)")
				pc.warp(863900,246000)
			elseif idx == "7" then
				syschat("Imha Bölgesine Iþýnlanýyorsun (Mavi Krallýk Lonca Bölgesi)")
				pc.warp(271800,13000)
			elseif idx == "8" then
				syschat("Daeyami Bölgesine Iþýnlanýyorsun (Mavi Krallýk Lonca Bölgesi)")
				pc.warp(204800,204800)
			elseif idx == "9" then
				syschat("Yongan Bölgesine Iþýnlanýyorsun (Kýrmýzý Krallýk)")
				pc.warp(474300,954800)
			elseif idx == "10" then
				syschat("Jayang Bölgesine Iþýnlanýyorsun (Kýrmýzý Krallýk)")
				pc.warp(353100,882900)
			elseif idx == "11" then
				syschat("Jungrang Bölgesine Iþýnlanýyorsun (Kýrmýzý Krallýk Lonca Bölgesi)")
				pc.warp(135600,4300)
			elseif idx == "12" then
				syschat("Miryang Bölgesine Iþýnlanýyorsun (Kýrmýzý Krallýk Lonca Bölgesi)")
				pc.warp(204800,204800)
			elseif idx == "13" then
				syschat("Seungryong Vadisine Iþýnlanýyorsun (Tarafsýz Bölge)")
				if pc.get_empire() == 1 then
					pc.warp(402100,673900)
				elseif pc.get_empire() == 2 then
					pc.warp(270400,739900)
				elseif pc.get_empire() == 3 then
					pc.warp(321300,808000)
				end
			elseif idx == "14" then		
				syschat("Yongbi Çölüne Iþýnlanýyorsun (Tarafsýz Bölge)")
				if pc.get_empire() == 1 then
					pc.warp(217800,627200)
				elseif pc.get_empire() == 2 then
					pc.warp(221900,502700)
				elseif pc.get_empire() == 3 then
					pc.warp(344000,502500)
				end
			elseif idx == "15" then
				syschat("Sohan Daðýna Iþýnlanýyorsun (Tarafsýz Bölge)")
				if pc.get_empire() == 1 then
					pc.warp(434200,290600)
				elseif pc.get_empire() == 2 then
					pc.warp(375200,174900)
				elseif pc.get_empire() == 3 then
					pc.warp(491800,173600)
				end
			elseif idx == "16" then
				syschat("Hwang Tapýnaðýna Iþýnlanýyorsun (Tarafsýz Bölge)")
				pc.warp(553700,145000)
			elseif idx == "17" then	
				syschat("Doyyumhwan'a Iþýnlanýyorsun (Tarafsýz Bölge)")
				if pc.get_empire() == 1 then
					pc.warp(599400,756300)
				elseif pc.get_empire() == 2 then
					pc.warp(597800,622200)
				elseif pc.get_empire() == 3 then
					pc.warp(730700,689800)
				end
			elseif idx == "18" then
				syschat("Yýlan Vadisine Iþýnlanýyorsun (Tarafsýz Bölge)")
				pc.warp(1059000,726200)
			elseif idx == "19" then
				syschat("Devler Diyarýna Iþýnlanýyorsun (Tarafsýz Bölge)")
				pc.warp(828300,763500)
			elseif idx == "20" then
				syschat("Hayalet Ormana Iþýnlanýyorsun (Tarafsýz Bölge)")
				pc.warp(288700,5700)
			elseif idx == "21" then	
				syschat("Kýzýl Ormana Iþýnlanýyorsun (Tarafsýz Bölge)")
				pc.warp(1119900,70800)
			elseif idx == "22" then
				if pc.get_level() < 90 then
					syschat(string.format("Seviyeniz Yeterli Deðil. Gereken Seviye %s",90))
					return
				end
				syschat("Ejderha Ateþi Burnuna Iþýnlanýyorsun (Tarafsýz Bölge)")
				pc.warp(1104300,1788500)
			elseif idx == "23" then
				if pc.get_level() < 90 then
					syschat(string.format("Seviyeniz Yeterli Deðil. Gereken Seviye %s",90))
					return
				end
				syschat("Nefrit Körfezine Iþýnlanýyorsun (Tarafsýz Bölge)")
				pc.warp(1086900,1655800)
			elseif idx == "24" then
				if pc.get_level() < 90 then
					syschat(string.format("Seviyeniz Yeterli Deðil. Gereken Seviye %s",90))
					return
				end
				syschat("Yýldýrým Daðlarýna Iþýnlanýyorsun (Tarafsýz Bölge)")
				pc.warp(1134500,1654600)
			elseif idx == "25" then
				if pc.get_level() < 90 then
					syschat(string.format("Seviyeniz Yeterli Deðil. Gereken Seviye %s",90))
					return
				end
				syschat("Gautama Uçurumuna Iþýnlanýyorsun (Tarafsýz Bölge)")
				pc.warp(1226300,1681100)
			elseif idx == "26" then
				syschat("Normal Maymun Zindanýna Iþýnlanýyorsun (Tarafsýz Bölge)")
				pc.warp(135200,652500)
			elseif idx == "27" then
				syschat("Zor Maymun Zindanýna Iþýnlanýyorsun (Tarafsýz Bölge)")
				pc.warp(135200,730000)
			elseif idx == "28" then
				syschat("Örümcek Zindaný (1)'e Iþýnlanýyorsun (Tarafsýz Bölge)")
				pc.warp(60000,496000)
			elseif idx == "29" then
				syschat("Örümcek Zindaný (2)'ye Iþýnlanýyorsun (Tarafsýz Bölge)")
				pc.warp(704100,464100)
			elseif idx == "30" then
				syschat("Örümcek Zindaný (3)'e Iþýnlanýyorsun (Tarafsýz Bölge)")
				pc.warp(51200,563200)
			elseif idx == "31" then
				syschat("Þeytan Kulesine Iþýnlanýyorsun (Tarafsýz Bölge)")
				pc.warp(590500,110500)
			elseif idx == "32" then
				syschat("Þeytan Mezarlýðý Giriþine Iþýnlanýyorsun (Tarafsýz Bölge)")
				pc.warp(591300,99500)
			elseif idx == "33" then
				syschat("Sürgün Maðarasý Giriþine Iþýnlanýyorsun (Tarafsýz Bölge)")
				pc.warp(284400,810700)
			elseif idx == "34" then
				syschat("Kýrmýzý Ejderha Kalesi Giriþine Iþýnlanýyorsun (Tarafsýz Bölge)")
				pc.warp(597600,706900)
			elseif idx == "35" then
				syschat("Nemerenin Gözetleme Kulesi Giriþine Iþýnlanýyorsun (Tarafsýz Bölge)")
				pc.warp(432792,165998)
			elseif idx == "36" then
				syschat("Meley Ýni Giriþine Iþýnlanýyorsun (Tarafsýz Bölge)")
				pc.warp(597100,698900)
			elseif idx == "37" then
				if pc.get_level() < 95 then
					syschat(string.format("Seviyeniz Yeterli Deðil. Gereken Seviye %s",95))
					return
				end
				syschat("Ochao Tapýnaðý Giriþine Iþýnlanýyorsun (Tarafsýz Bölge)")
				pc.warp(1277900,1734700)
			elseif idx == "38" then
				syschat("Greenmont Bölgesine Iþýnlanýyorsun (Ortak Bölge)")
				pc.warp(2159800,2533100)
			else
				syschat("Bilinmeyen bir haritaya ýþýnlanmaya çalýþýyorsun.")
			end
		end
	end
end
