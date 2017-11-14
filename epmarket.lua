quest coklunpc begin
	state start begin
		when 20990.click begin
			local nesne = select ("Armas ","Armaduras","Pets-Montadas","Trajes","Itens de transformação","Arcos - Objetos","+ Itens de imprensa","Traje de armas - Geração","Sair")
			if nesne == 1 then
				npc.open_shop(20)
			elseif nesne == 2 then
				npc.open_shop(21)
			elseif nesne == 3 then
				npc.open_shop(22)
			elseif nesne == 4 then
				npc.open_shop(23)
			elseif nesne == 5 then
				npc.open_shop(24)
			elseif nesne == 6 then
				npc.open_shop(25)
			elseif nesne == 7 then
				npc.open_shop(26)
			elseif nesne == 8 then
				npc.open_shop(27)
			elseif nesne == 9 then return end
		end
	end
end
