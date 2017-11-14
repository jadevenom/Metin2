quest ride begin
	state start begin
		when letter with pc . is_gm ( ) begin
			send_letter_golden_blink_text ( "Deneme " )
		end
		when button or info begin
			send_letter_golden_blink_text ( "Deneme " )
		end
	end
end