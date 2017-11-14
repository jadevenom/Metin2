quest enchanted_forest begin
    state start begin
		when logout with pc.get_map_index() == 210 begin
			pc.setf("enchanted_forest_zone", "dungeon_enter", 1)
			pc.setqf("limit_activity", get_time() + 10 * 60)
		end
		
		when login with pc.get_map_index() == 210 begin
			if get_time() >= pc.getqf("limit_activity") and pc.getqf("limit_activity") > 0 then
				pc.warp(1277900, 1734700)
			else
				pc.setqf("limit_activity", 0)
			end
		end
	end
end