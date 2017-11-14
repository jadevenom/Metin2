quest PetSystems begin
	state start begin
		function get_pet_info(itemVnum)
			pet_info_map =
			{
				[55701] = { 34041, "'s Maymun", 0},
				[55702] = { 34045, "'s Örümcek", 0},
				[55703] = { 34049, "'s Razadör", 0},
				[55704] = { 34053, "'s Nemere", 0},
				[55705] = { 34036, "'s Küçük Ejderha", 0},
				[55706] = { 34064, "'s Küçük Meley", 0},
			}
			itemVnum = tonumber(itemVnum)
			return pet_info_map[itemVnum]
		end

		when 55701.use or 55702.use or 55703.use or 55704.use or 55705.use or 55706.use begin
			local pet_info = PetSystems.get_pet_info(item.vnum)
			if null != pet_info then
				local mobVnum = pet_info[1]
				local petName = pet_info[2]
				if true == newpet.is_summon(mobVnum) then
					newpet.unsummon(mobVnum)
				else
					if newpet.count_summoned() < 1 then
						newpet.summon(mobVnum, petName, false)
					else
						syschat("Zaten bir evcil hayvan caðýrmýþsýn.")
					end
				end -- if pet.is_summon
			end  -- if null != pet_info
		end -- when
	end
end