quest chest_reward begin
	state start begin
		when 50270.use begin
			local gold = number(1, 4)
			if gold == 1 then
				pc.change_gold(10000000)
			elseif gold == 3 then
				pc.change_gold(30000000)
			end
			
			local drop1vnum = {
									[1] = 27992,
									[2] = 27993,
									[3] = 27994
			}
			
			local drop1count = {
									[1] = 1,
									[2] = 1,
									[3] = 1
			}
			
			local drop1_chance = number(1, 5)
			if drop1_chance < 4 then
				pc.give_item2(drop1vnum[drop1_chance], drop1count[drop1_chance])
			end
			
			local drop2vnum = {
									[1] = 30195,
									[2] = 30196,
									[3] = 30197,
									[4] = 30198,
									[5] = 30199,
									[6] = 30194,
									[7] = 30193,
									[8] = 30192,
									[9] = 30335,
									[10] = 50514,
									[11] = 50515
			}
			
			local drop2count = {
									[1] = 5,
									[2] = 5,
									[3] = 5,
									[4] = 5,
									[5] = 5,
									[6] = 5,
									[7] = 5,
									[8] = 5,
									[9] = 1,
									[10] = 1,
									[11] = 1
			}
			
			local i = 1
			while i < 4 do
				local drop2_chance = number(1, 9)
				pc.give_item2(drop2vnum[drop2_chance], drop2count[drop2_chance])
				i = i + 1
			end
			
			local drop3vnum = {
									[1] = 55406,
									[2] = 12683,
									[3] = 12543,
									[4] = 12283,
									[5] = 21543
			}
			
			local drop3count = {
									[1] = 1,
									[2] = 1,
									[3] = 1,
									[4] = 1,
									[5] = 1
			}
			
			local j = 1
			while j < 3 do
				local upgrade = number(1, 3)
				local drop3_chance = number(1, 5)
				local item_vnum = drop3vnum[drop3_chance] + upgrade
				pc.give_item2(item_vnum, drop3count[drop3_chance])
				j = j + 1
			end
			
			pc.remove_item(50270, 1)
		end
		
		when 50271.use begin
			local gold = number(1, 4)
			if gold == 1 then
				pc.change_gold(10000000)
			elseif gold == 3 then
				pc.change_gold(30000000)
			end
			
			local drop1vnum = {
									[1] = 27992,
									[2] = 27993,
									[3] = 27994
			}
			
			local drop1count = {
									[1] = 1,
									[2] = 1,
									[3] = 1
			}
			
			local drop1_chance = number(1, 5)
			if drop1_chance < 4 then
				pc.give_item2(drop1vnum[drop1_chance], drop1count[drop1_chance])
			end
			
			local drop2vnum = {
									[1] = 30195,
									[2] = 30196,
									[3] = 30197,
									[4] = 30198,
									[5] = 30199,
									[6] = 30194,
									[7] = 30193,
									[8] = 30192,
									[9] = 30335,
									[10] = 50514,
									[11] = 50515
			}
			
			local drop2count = {
									[1] = 5,
									[2] = 5,
									[3] = 1,
									[4] = 3,
									[5] = 3,
									[6] = 5,
									[7] = 5,
									[8] = 5,
									[9] = 10,
									[10] = 1,
									[11] = 1
			}
			
			local i = 1
			while i < 4 do
				local drop2_chance = number(1, 9)
				pc.give_item2(drop2vnum[drop2_chance], drop2count[drop2_chance])
				i = i + 1
			end
			
			local drop3vnum = {
									[1] = 55406,
									[2] = 12683,
									[3] = 12543,
									[4] = 12283,
									[5] = 21543
			}
			
			local drop3count = {
									[1] = 1,
									[2] = 1,
									[3] = 1,
									[4] = 1,
									[5] = 1
			}
			
			local j = 1
			while j < 3 do
				local upgrade = number(1, 3)
				local drop3_chance = number(1, 5)
				local item_vnum = drop3vnum[drop3_chance] + upgrade
				pc.give_item2(item_vnum, drop3count[drop3_chance])
				j = j + 1
			end
			
			pc.remove_item(50271, 1)
		end
    end
end