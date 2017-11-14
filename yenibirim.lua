quest yenibirim begin
	state start begin
		when warehouse_keeper.chat."Yeni Birim (TEST GM)" with pc.is_gm() begin
			local isim = pc.get_name()
			say_title("Yeni Birim:")
			say("")
			say("Hesabina kaç yeniBirim yüklensin?")
			say("")
			local yeniBirimMiktar = input()
			mysql_query10("UPDATE account.account SET yeniBirim = yeniBirim + '"..yeniBirimMiktar.."' WHERE id = (SELECT account_id FROM player.player WHERE name='"..isim.."');")
		end
	end
end