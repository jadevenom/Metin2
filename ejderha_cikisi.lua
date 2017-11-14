-----------------------------------------------------------------
-- Sancak Server Files - Developer By: Mustafa ÖZGÜR {-Shark-} 
-- S-Ultimate Serileri
-- Destek Skype: sancakcf
-----------------------------------------------------------------
quest ejderha_cikis begin
state start begin
when 30121.chat."Bu bölgeden çýkmak istiyorum! " with pc.get_map_index() == 79 begin
		say_title("Sura Ruhu:")
		say("")
		say("Seni maðaranýn giriþine götüreceðim. ")
		say("")
		local s = select("Olur. ","Hayýr, ben burada kalacaðým. ")
		if s == 2 then
		return
		end
		pc.warp(180100,1220400)
		end
		end
		end