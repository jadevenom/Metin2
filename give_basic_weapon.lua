quest basic_weapon begin
	state start begin
		when login with pc.getqf("basic_weapon") == 0 begin
		notice_all("O novo jogador " .. pc.get_name() .. " juntou-se a nós") 
		notice_all("Divirta-se. " .. pc.get_name() .. " ")
			if pc.get_job() == 0 then
				local silah = 19
				local zirh = 11209
				local kask = 12209
				local kalkan = 13009
				local bilezik = 14009
				local papuc = 15009
				local kolye = 16009
				local kupe = 17009
				local ruzgar = 72701
				pc.give_item2_select(silah)
				item.equip(4)
				pc.give_item2_select(zirh)
				item.equip(0)
				pc.give_item2_select(kask)
				item.equip(1)
				pc.give_item2_select(kalkan)
				item.equip(10)
				pc.give_item2_select(bilezik)
				item.equip(3)
				pc.give_item2_select(papuc)
				item.equip(2)
				pc.give_item2_select(kolye)
				item.equip(5)
				pc.give_item2_select(kupe)
				item.equip(6)
				pc.give_item2_select(ruzgar)
				item.equip(7)
				pc.give_item2("40101",1)
				pc.give_item2("40104",1)
			elseif pc.get_job() == 1 then
				local silah = 1009
				local zirh = 11409
				local kask = 12349
				local kalkan = 13009
				local bilezik = 14009
				local papuc = 15009
				local kolye = 16009
				local kupe = 17009
				local ok = 8000
				local ruzgar = 72701
				pc.give_item2_select(silah)
				item.equip(4)
				pc.give_item2_select(zirh)
				item.equip(0)
				pc.give_item2_select(kask)
				item.equip(1)
				pc.give_item2_select(kalkan)
				item.equip(10)
				pc.give_item2_select(bilezik)
				item.equip(3)
				pc.give_item2_select(papuc)
				item.equip(2)
				pc.give_item2_select(kolye)
				item.equip(5)
				pc.give_item2_select(kupe)
				item.equip(6)
				pc.give_item2_select(ok,200)
				item.equip(9)
				pc.give_item2_select(ruzgar)
				item.equip(7)
				pc.give_item2("40101",1)
				pc.give_item2("40102",1)
			elseif pc.get_job() == 2 then
				local silah = 19
				local zirh = 11609
				local kask = 12489
				local kalkan = 13009
				local bilezik = 14009
				local papuc = 15009
				local kolye = 16009
				local kupe = 17009
				local ruzgar = 72701
				pc.give_item2_select(silah)
				item.equip(4)
				pc.give_item2_select(zirh)
				item.equip(0)
				pc.give_item2_select(kask)
				item.equip(1)
				pc.give_item2_select(kalkan)
				item.equip(10)
				pc.give_item2_select(bilezik)
				item.equip(3)
				pc.give_item2_select(papuc)
				item.equip(2)
				pc.give_item2_select(kolye)
				item.equip(5)
				pc.give_item2_select(kupe)
				item.equip(6)
				pc.give_item2_select(ruzgar)
				item.equip(7)
				pc.give_item2("40101",1)
			elseif pc.get_job() == 3 then
				local silah = 7009
				local zirh = 11809
				local kask = 12629
				local kalkan = 13009
				local bilezik = 14009
				local papuc = 15009
				local kolye = 16009
				local kupe = 17009
				local ruzgar = 72701
				pc.give_item2_select(silah)
				item.equip(4)
				pc.give_item2_select(zirh)
				item.equip(0)
				pc.give_item2_select(kask)
				item.equip(1)
				pc.give_item2_select(kalkan)
				item.equip(10)
				pc.give_item2_select(bilezik)
				item.equip(3)
				pc.give_item2_select(papuc)
				item.equip(2)
				pc.give_item2_select(kolye)
				item.equip(5)
				pc.give_item2_select(kupe)
				item.equip(6)
				pc.give_item2_select(ruzgar)
				item.equip(7)
				pc.give_item2("40105",1)
				pc.give_item2("40106",1)
			elseif pc.get_job() == 4 then
				local silah = 6009
				local zirh = 21009
				local kask = 21509
				local kalkan = 13009
				local bilezik = 14009
				local papuc = 15009
				local kolye = 16009
				local kupe = 17009
				local ruzgar = 72701
				pc.give_item2_select(silah)
				item.equip(4)
				pc.give_item2_select(zirh)
				item.equip(0)
				pc.give_item2_select(kask)
				item.equip(1)
				pc.give_item2_select(kalkan)
				item.equip(10)
				pc.give_item2_select(bilezik)
				item.equip(3)
				pc.give_item2_select(papuc)
				item.equip(2)
				pc.give_item2_select(kolye)
				item.equip(5)
				pc.give_item2_select(kupe)
				item.equip(6)
				pc.give_item2_select(ruzgar)
				item.equip(7)
				pc.give_item2("40107",1)
			end
			local para = 100000
			pc.give_gold(para)
			pc.give_item2("50053",1)
			pc.give_item2("70038",1)
			pc.give_item2("27112",200)
			pc.give_item2("27115",200)
			pc.give_item2("72725",1)
			pc.give_item2("72729",1)
			pc.give_item2("71143",1)
			pc.set_skill_level (137,59)
			pc.set_skill_level (138,59)
			pc.set_skill_level (139,59)
			pc.set_skill_level (140,59)
			pc.set_skill_level (124,59)
			pc.set_skill_level (131,59)
			pc.set_skill_level (121,59)
			pc.set_skill_level (122,59)
			pc.set_skill_level (129,59)
			pc.set_skill_level (126,59)
			pc.set_skill_level (127,59)
			pc.set_skill_level (128,59)
			pc.set_skill_level (130,59)
			pc.set_skill_level(137,20)
			pc.set_skill_level(138,20)
			pc.set_skill_level(139,20)
			game.set_safebox_level(1) --- depo
			horse.set_level(21)
			-- horse.summon()
			-- horse.ride()
			pc.setqf("basic_weapon",1)
		end
	end
end