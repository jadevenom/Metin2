quest sash begin
	state start begin
		when 20406.chat."Bir omuz kuþaðý nedir?" begin
			say_title(mob_name(20406))
			say("")
			say("Omuz kuþaðý sana iki imkan saðlar:")
			say("Kombinasyon ve emiþ.")
			say("")
			say("Kombinasyon ayný derecedeki iki kuþakla")
			say("gerçekleþtirilebilir. Kombine edilen iki kuþak")
			say("daha deðerli bir kuþak meydana getirir.")
			say("")
			say("Emiþ iþleminde bir silah veya zýrh üzerinde")
			say("bulunan bonuslar")
			say("çeþitli oranlarla omuz kuþaðýna aktarýlýr.")
			say("")
			say("Emiþ oraný (%) kuþaðýn derecesine baðlýdýr. Bonus")
			say("iþlemi için seçilen silah ve zýrh geri")
			say("döndürülemez þekilde yok edilir.")
			say("")
		end
		
		when 20406.chat."Kombinasyon" begin
			say_title(mob_name(20406))
			say("")
			say("Ýki kuþaðý kombine mi etmek istiyorsun?")
			say("")
			local confirm = select("Evet", "Hayýr")
			if confirm == 2 then
				return
			end
			
			setskin(NOWINDOW)
			pc.open_sash(true)
		end
		
		when 20406.chat."Bonus Emiþi" begin
			say_title(mob_name(20406))
			say("")
			say("Silah veya zýrhýndan bonus mu emmek istersin?")
			say("")
			local confirm = select("Evet", "Hayýr")
			if confirm == 2 then
				return
			end
			
			setskin(NOWINDOW)
			pc.open_sash(false)
		end
	end
end