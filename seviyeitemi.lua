quest seviyeitemi begin
	state start begin
		when 40005.use begin
			say_title("Seviye Eşyası ")
			say("")
			say("Bu eşya sayesinde 120 level olabilirsin. ")
			say("Eşyayı kullanmak istediğine eminmisin? ")
			local sec = select ("Evet","Hayır")
				if sec == 1 then
					if pc.get_level() == 120 then
					say_title("Seviye Eşyası ")
					say("")
					say("Zaten 120 levelsin. ")
					else
					if pc.count_item(40005) >= 1 then
					pc.set_level(120)
					pc.remove_item(40005,1)
					end
					end
				else 
					return 
			end
		end
	end
end