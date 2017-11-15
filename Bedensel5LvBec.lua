quest Bedensel5LvBec begin
	state start begin
		when login begin
			cmdchat("bedensel_oto_bec "..q.getcurrentquestindex())
		end
		when info or button begin
		local pc_job = pc . get_job ( ) 
		if pc_job ~= 0 then 
--		say_title ( "Educação incorreta " ) 
--		say ( "" ) 
--		say ( "Peço desculpa." ) 
--		say ( "Somente os Guerreiros podem escolher Arte Corpo." ) 
--		say ( "" ) 
--		say ( "" ) 
		if pc_job == 0 then 
--		say_reward ( "Um Guerreiro, Guerreiro Mental " ) 
--		say_reward ( "ou Arte Corpo " ) 
--		say_reward ( "Pode escolher." ) 
		elseif pc_job == 1 then 
--		say_reward ( "Um Ninja, uma luta próxima ou" ) 
--		say_reward ( "Uzak Dövüþ eðitimini" ) 
--		say_reward ( "seçebilir." ) 
		elseif pc_job == 2 then 
--		say_reward ( "Bir Sura, Büyülü Silah" ) 
--		say_reward ( "veya Kara Büyü eðitimini" ) 
--		say_reward ( "seçebilir." ) 
		elseif pc_job == 3 then 
--		say_reward ( "Bir Þaman, Ejderha Gücü eðitimini" ) 
--		say_reward ( "veya Ýyileþtirme eðitimini" ) 
--		say_reward ( "seçebilir." ) 
		end 
--		say ( "" ) 
		return 
		end 
--		say_title ( "Bedensel Savaþ eðitimi" ) 
--		say ( "Bedensel savaþ eðitimi hýzlý savaþma eðitimi ve" ) 
--		say ( "metodlarýný, ayrýca geliþmiþ temel saldýrý " ) 
--		say ( "tiplerini içerir." ) 
--		say_reward ( "Gereksinim: Seviye 5 ve üstü bir savaþçý olmak" ) 
--		say ( "" ) 
--		local s = select ( "Baþla" , "Daha sonra" ) 
		if 2 == s then 
		return 
		end 
		if pc . get_job ( ) ~= 0 or pc . get_skill_group ( ) ~= 0 then 
		test_chat ( "npc_is_same_job:" .. bool_to_str ( npc_is_same_job ( ) ) ) 
		test_chat ( "pc.get_skill_group:" .. pc . get_skill_group ( ) ) 
		test_chat ( "pc_job:" .. pc . get_job ( ) ) 
		return 
		end 
		set_state ( "start" ) 
		pc . set_skill_group ( 1 ) 
		pc . clear_skill ( ) 
		char_log ( 0 , "CLEAR_SKILL" , "Ögretmen silindikten sonraki dogal yetenek." ) 
--		say_title ( "Bedensel savaþ eðitimini seçtin." ) 
--		say ( "Hoþgeldin!" ) 
		if not pc . is_clear_skill_group ( ) then 
--		say ( "Ders almayý seçtiðin için 4 yetenek puaný " ) 
--		say ( "kazandýn. Bu puanlarý dilediðin herhangi bir" ) 
--		say ( "yeteneðini geliþtirmek için kullabilirsin." ) 
--		say_title ( "Bilgi:" ) 
--		say_reward ( "4 yetenek puaný kazandýn." ) 
--		say ( "" ) 
		pc . set_skill_level ( 1 , 0 ) 
		pc . set_skill_level ( 2 , 0 ) 
		pc . set_skill_level ( 3 , 0 ) 
		pc . set_skill_level ( 4 , 0 ) 
		pc . set_skill_level ( 5 , 0 ) 
		pc . set_skill_level ( 137 , 20 ) 
		pc . set_skill_level ( 138 , 20 ) 
		pc . set_skill_level ( 139 , 20 ) 
		pc . set_skill_level ( 131 , 10 ) 
		pc . set_skill_level ( 129 , 20 ) 
		pc . set_skill_level ( 128 , 20 ) 
		pc . set_skill_level ( 127 , 20 ) 
		pc . set_skill_level ( 126 , 20 ) 
		pc . set_skill_level ( 124 , 20 ) 
		pc . set_skill_level ( 121 , 20 ) 
		pc . set_skill_level ( 137 , 20 ) 
		pc . set_skill_level ( 138 , 20 ) 
		pc . set_skill_level ( 139 , 20 ) 
		pc . set_skill_level ( 140 , 20 ) 
		pc . set_skill_level ( 124 , 20 ) 
		pc . set_skill_level ( 131 , 20 ) 
		pc . set_skill_level ( 121 , 20 )
		pc . set_skill_level ( 129 , 20 ) 
		pc . set_skill_level ( 126 , 20 ) 
		pc . set_skill_level ( 127 , 20 ) 
		pc . set_skill_level ( 128 , 20 ) 
		pc . set_skill_level ( 130 , 20 )
		horse . unride ( ) 
		horse . advance ( ) 
		horse . advance ( ) 
		horse . advance ( ) 
		horse . advance ( ) 
		horse . advance ( ) 
		horse . advance ( ) 
		horse . advance ( ) 
		horse . advance ( ) 
		horse . advance ( ) 
		horse . advance ( ) 
		horse . advance ( ) 
		horse . advance ( ) 
		horse . advance ( ) 
		horse . advance ( ) 
		horse . advance ( ) 
		horse . advance ( ) 
		horse . advance ( ) 
		horse . advance ( ) 
		horse . advance ( ) 
		horse . advance ( ) 
		horse . advance ( )
		horse . advance ( ) 
		horse . advance ( ) 
		horse . advance ( ) 
		horse . advance ( ) 
		horse . advance ( ) 
		horse . advance ( ) 
		horse . advance ( ) 
		horse . advance ( ) 
		horse . advance ( )  

		else 
--		say_reward ( "Yeni bir ders seçtiginde," ) 
--		say_reward ( "daha fazla tecrübe puani almayacaksin." ) 
--		say ( "" ) 
		end 
--		clear_letter ( ) 
		end
	end
end
