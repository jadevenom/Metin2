quest cube_opener_list begin
    state start begin
		when 20378.take begin
			local vnum = item.get_vnum()
			local can_change = true
			local upgrade_list = {[11299] = 20000, [11499] = 20250, [11699] = 20500, [11899] = 20750, [21079] = 21090, [20009] = {[1] = 20860, [2] = 20910}, [20259] = {[1] = 20870, [2] = 20920}, [20509] = {[1] = 20880, [2] = 20930}, [20759] = {[1] = 20890, [2] = 20940}, [21099] = {[1] = 20900, [2] = 20950},}
			local material_list = {{["vnum"] = vnum, ["count"] = 1,}, {["vnum"] = 70031, ["count"] = 3,}, {["vnum"] = 51001, ["count"] = 100,}, {["vnum"] = 25040,["count"] = 2,},}
			if vnum == 11299 or vnum == 11499 or vnum == 11699 or vnum == 11899 or vnum == 21079 then
				local p = 5000000
				say_title(mob_name(20378))
				say("")
				say("Geliştirmek Için ")
				say("")
				say_item_vnum(upgrade_list[vnum])
				say("")
				say("")
				say("")
				say("")
				wait()
				say_title(mob_name(20378))
				say("")
				say("ihtiyacin Var.: ")
				say(string.format("%d Yang ", p))
				for i, material in ipairs(material_list) do
					say(string.format("x%d %s ", material.count, item_name(material.vnum)))
					can_change = can_change and (material.count <= pc.count_item(material.vnum))
					if pc.get_gold() < 5000000 then
						can_change = false_yang
					end
				end
				
				say("Gelişime Devam Etmek istiyor musun? ")
				local agree = select("Evet. ", "Hayır ")
				if agree == 1 then
					say_title(mob_name(20378))
					say("")
					if can_change == false_yang then
						say("Yeterli Yang Yok. ")
						return
					elseif can_change != true then
						say("Yeterli Eşya Yok. ")
						return
					end
					
					local bTry = item.copy_and_give_before_remove(upgrade_list[vnum])
					if not bTry then
						say("Bir Hata Oluştu. ")
					else
						pc.change_gold(-p)
						for i, material in ipairs(material_list) do
							if material.vnum != vnum then
								pc.remove_item(material.vnum, material.count)
							end
						end
						
						say("Aldığınız: ")
						say_item_vnum(upgrade_list[vnum])
						say("")
						say("")
						say("")
						wait()
					end
				end
			elseif vnum == 20009 or vnum == 20259 or vnum == 20509 or vnum == 20759 or vnum == 21099 then
				local a1 = string.format(item_name(upgrade_list[vnum][1]))
				local a2 = string.format(item_name(upgrade_list[vnum][2]))
				say_title(mob_name(20378))
				say("")
				say("Hassaslaştırabilirim? ")
				say("istediğiniz.?")
				local armors = select(a1, a2, "Kapat ")
				if armors == 1 or armors == 2 then
					local p = 10000000
					if armors == 1 then
						requirments_list = {{["vnum"] = vnum, ["count"] = 1,}, {["vnum"] = 70031, ["count"] = 5,}, {["vnum"] = 30619, ["count"] = 5,}, {["vnum"] = 30615, ["count"] = 5,}, {["vnum"] = 30605, ["count"] = 10,}, {["vnum"] = 30606, ["count"] = 10,},}
					else
						requirments_list = {{["vnum"] = vnum, ["count"] = 1,}, {["vnum"] = 70031, ["count"] = 5,}, {["vnum"] = 30619, ["count"] = 5,}, {["vnum"] = 30614, ["count"] = 5,}, {["vnum"] = 30609, ["count"] = 10,}, {["vnum"] = 30608, ["count"] = 10,},}
					end
					
					say_title(mob_name(20378))
					say("")
					say("Geliştirmek için; ")
					say("")
					say_item_vnum(upgrade_list[vnum][armors])
					say("")
					say("")
					say("")
					say("")
					wait()
					say_title(mob_name(20378))
					say("")
					say("ihtiyacın var.:")
					say(string.format("%d Yang ", p))
					for i, material in ipairs(requirments_list) do
						say(string.format("x%d %s", material.count, item_name(material.vnum)))
						can_change = can_change and (material.count <= pc.count_item(material.vnum))
						if pc.get_gold() < p then
							can_change = false_yang
						end
					end
					
					say("Gelişime Devam Etmek istiyor musun? ")
					local agree = select("Evet. ", "Hayır ")
					if agree == 1 then
						say_title(mob_name(20378))
						say("")
						if can_change == false_yang then
							say("Yeterli Yang Yok. ")
							return
						elseif can_change != true then
							say("Yeterli Eşya Yok. ")
							return
						end
						
						local bTry = item.copy_and_give_before_remove(upgrade_list[vnum][armors])
						if not bTry then
							say("Bir Hata Oluştu. ")
						else
							pc.change_gold(-p)
							for i, material in ipairs(requirments_list) do
								if material.vnum != vnum then
									pc.remove_item(material.vnum, material.count)
								end
							end
							
							say("Aldığınız: ")
							say_item_vnum(upgrade_list[vnum][armors])
							say("")
							say("")
							say("")
							wait()
						end
					end
				end
			end
		end
    end
end