quest silah_kostumu begin
	state start begin
		when 30336.use begin 
		
		if pc . count_item ( 30336 ) < 1 then 
			say_title ( " Bug Kontrol " ) 
			say_kirmizi( " Envanterindeki nesne kaybolmuş. " ) 
			return
			end
            local s = select("Kılıç ","Hançer ","Yay ","Çift el ","Çan ","Yelpaze ","Pençe ","Kullanmak İstemiyorum ")
			if s == 1 then
            pc.give_item2("40101", 1)
			pc.remove_item ( 30336 )
			end
        if s == 2 then
            pc.give_item2("40102", 1)
			pc.remove_item ( 30336 )
			end
        if s == 3 then
            pc.give_item2("40103", 1)
			pc.remove_item ( 30336 )
			end
        if s == 4 then
            pc.give_item2("40104", 1)
			pc.remove_item ( 30336 )
			end
        if s == 5 then
            pc.give_item2("40105", 1)
			pc.remove_item ( 30336 )
            end
        if s == 6 then
            pc.give_item2("40106", 1)
			pc.remove_item ( 30336 )
			end
        if s == 7 then
            pc.give_item2("40107", 1)
			pc.remove_item ( 30336 )
			end
        end
    end
end