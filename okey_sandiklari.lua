-----------------------------------------------------------------
-- Sancak Server Files - Developer By: Mustafa ÖZGÜR {-Shark-} 
-- S-Ultimate Serileri
-- Destek Skype: sancakcf
-----------------------------------------------------------------
quest okey_sandiklari begin
	state start begin
		when 71194.use begin
			if pc . count_item ( 71194 ) < 1 then 
			say_title ( "Bug Kontrol" ) 
			say( "Envanterindeki sandýk kaybolmuþ." )
			return 
			end
			pc.remove_item("71194",1)
			local a1 = number(1,15)
			if a1 == 1 then
			pc.give_item2("25041",1)  
			elseif a1 == 2 then
			pc.give_item2("55401",1) 
			elseif a1 == 3 then
			pc.give_item2("55402",1) 
			elseif a1 == 4 then
			pc.give_item2("55403",1) 
			elseif a1 == 5 then
			pc.give_item2("55404",1)
			elseif a1 == 6 then
			pc.give_item2("85003",1)
			elseif a1 == 7 then
			pc.give_item2("79506",1)
			elseif a1 == 8 then
			pc.give_item2("27992",1)
			elseif a1 == 9 then
			pc.give_item2("50513",1)
			elseif a1 == 10 then
			pc.give_item2("55003",1)
			elseif a1 == 11 then
			pc.give_item2("50323",1)
			elseif a1 == 12 then
			pc.give_item2("50324",1)
			elseif a1 == 13 then
			pc.give_item2("51506",1)
			elseif a1 == 14 then
			pc.give_item2("71193",1)
			elseif a1 == 15 then
			pc.give_item2("50525",1)
			end
		end
		
		when 71195.use begin
			if pc . count_item ( 71195 ) < 1 then 
			say_title ( "Bug Kontrol" ) 
			say( "Envanterindeki sandýk kaybolmuþ." )
			return 
			end
			pc.remove_item("71195",1)
			local a1 = number(1,15)
			if a1 == 1 then
			pc.give_item2("25041",1)  
			elseif a1 == 2 then
			pc.give_item2("55401",1) 
			elseif a1 == 3 then
			pc.give_item2("55402",1) 
			elseif a1 == 4 then
			pc.give_item2("55403",1) 
			elseif a1 == 5 then
			pc.give_item2("55404",1)
			elseif a1 == 6 then
			pc.give_item2("85003",1)
			elseif a1 == 7 then
			pc.give_item2("79506",1)
			elseif a1 == 8 then
			pc.give_item2("27992",1)
			elseif a1 == 9 then
			pc.give_item2("50513",1)
			elseif a1 == 10 then
			pc.give_item2("55003",1)
			elseif a1 == 11 then
			pc.give_item2("50323",1)
			elseif a1 == 12 then
			pc.give_item2("50324",1)
			elseif a1 == 13 then
			pc.give_item2("51506",1)
			elseif a1 == 14 then
			pc.give_item2("71193",1)
			elseif a1 == 15 then
			pc.give_item2("50525",1)
			end
		end
		
		when 71196.use begin
			if pc . count_item ( 71196 ) < 1 then 
			say_title ( "Bug Kontrol" ) 
			say( "Envanterindeki sandýk kaybolmuþ." )
			return 
			end
			pc.remove_item("71196",1)
			pc.give_item2("79506",1)
		end
	end
end