quest sash_mission begin
	state start begin
		when login or levelup with pc.get_level() >= 40 and not pc.is_gm() begin
			set_state("information")
		end
	end
	
	state information begin
		when enter begin
			pc.setqf("time_to_wait", 0)
			pc.setqf("collect_count", 0)
		end
		
		when letter begin
			local v = find_npc_by_vnum(20406)
			if v != 0 then
				target.vid("theowahdan", v, "Theowahdan")
			end
			
			send_letter("A special cloth")
		end
		
		when button or info begin
			say_title(mob_name(20406))
			say("")
			say("Theowahdan is looking for you. Hurry up and")
			say("talk to him.")
			say("")
		end
		
		when theowahdan.target.click or 20084.chat."Increase your power" begin
			target.delete("theowahdan")
			
			say_title(mob_name(20406))
			say("")
			say("Ah, here you are! I have discovered something")
			say("extraordinary: a new pice of equipment called")
			say("Sash.")
			say("")
			say("The sash offers you two options:")
			say("Combination & Absorption.")
			say("")
			say("You can try combination with sash of same")
			say("grade. Two sash combined can generate a")
			say("sash of a biggest grade.")
			say("")
			wait()
			say_title(mob_name(20406))
			say("")
			say("In a absorption the sash take the bonus")
			say("of a weapon or amour at a rate of your")
			say("sash. The absorption rate varies between")
			say("the sash grade, the weapon or amour")
			say("absorbed will be destroyed.")
			say("")
			say("I'm able to create a sash of 1* Grade.")
			say("But I need x40 "..item_name(85000)..".")
			say("")
			say("Just the "..mob_name(20355).." is able to create this")
			say("material, so go and talk to him.")
			say("")
			set_state("go_to_disciple")
		end
	end
	
	state go_to_disciple begin
		when letter begin
			local v = find_npc_by_vnum(20355)
			if v != 0 then
				target.vid("captain", v, "Captain")
			end
			
			send_letter("Increase your power")
		end
		
		when button or info begin
			say_title("Increase your power")
			say("")
			say("Find the "..mob_name(20355).." for take the material.")
			say("")
		end
		
    	when captain.target.click or 20355.chat."Increase your power" begin
			target.delete("captain")
			
			say_title(mob_name(20355))
			say("")
			say("Congratulations! "..mob_name(20406).." told me that you come to")
			say("visit me. I recently discovered that Sung Mahi")
			say("become more stronger.")
			say("")
			say("At least one of us must have its powers or Sung")
			say("Mahi will destroy all.")
			say("")
			say("I can make a special coat but will not be so easy.")
			say("")
			say("Give me three hours, then I'll give you material")
			say("you need.")
			say("")
			wait()
			say_title(mob_name(20355))
			say("")
			say("If you come back in three hours, I will have")
			say("the material ready for you.")
			say("")
			say("I promise you!")
			say("")
			say("Don't forget to visit me in three hours!")
			say("")
			local agree = select("Yes", "No")
			if agree == 1 then
				pc.setqf("time_to_wait", 60 * 3 + pc.get_playtime())
				set_state("time_to_wait")
			end
		end
	end
	
	state time_to_wait begin
		when letter begin
			local v = find_npc_by_vnum(20355)
			if v != 0 then
				target.vid("captain", v, "Captain")
			end
			
			send_letter("Increase your power")
		end
		
		when button or info begin
			say_title("Increase your power")
			say("")
			say("Find the "..mob_name(20355).." for take the material.")
			say("")
			if pc.getqf("time_to_wait") > pc.get_playtime() then
				local time_to_wait = pc.getqf("time_to_wait") - pc.get_playtime()
				say("Remaining time: "..time_to_wait.." minutes.")
				say("")
			end
		end
		
    	when captain.target.click or 20355.chat."Increase your power" begin
			target.delete("captain")
			
			say_title(mob_name(20355))
			say("")
			if pc.getqf("time_to_wait") > pc.get_playtime() then
				local time_to_wait = pc.getqf("time_to_wait") - pc.get_playtime()
				say("To soon the three hours does not yet passed.")
				say("")
				say("Remaining time: "..time_to_wait.." minutes.")
				say("")
			else
				pc.setqf("time_to_wait", 0)
				say("Very good, as promised take this material.")
				say("")
				if pc.getqf("collect_count") >= 39 then
					pc.setqf("collect_count", pc.getqf("collect_count") + 1)
					set_state("__complete")
				else
					pc.setqf("collect_count", pc.getqf("collect_count") + 1)
					set_state("go_to_disciple")
				end
				
				pc.give_item2(85000, 1)
			end
		end
	end
	
	state __complete begin
		when enter begin
			pc.delqf("time_to_wait")
			pc.delqf("collect_count")
		end
		
		when letter begin
			local v = find_npc_by_vnum(20406)
			if v != 0 then
				target.vid("theowahdan_reward", v, "Theowahdan")
			end
			
			send_letter("A special cloth")
		end
		
		when button or info begin
			say_title(mob_name(20406))
			say("")
			say("Theowahdan is looking for create a sash")
			say("for you. Hurry up and talk to him.")
			say("")
		end
		
		when theowahdan_reward.target.click or 20084.chat."Increase your power" begin
			target.delete("theowahdan_reward")
			
			say_title(mob_name(20406))
			say("")
			say("Ah, here you are! The "..mob_name(20355).." tell me")
			say("now you have enough material.")
			say("")
			say("Let me see...")
			say("")
			wait()
			say_title(mob_name(20406))
			say("")
			if pc.count_item(85000) < 40 then
				say("What? You don't have enough material!")
				say("")
				say("Go back and talk to the Captain!")
				say("")
				set_state("go_to_disciple")
			else
				pc.remove_item(85000, 40)
				pc.give_item2_select(85005, 1)
				item.set_socket(1, 1)
				say("Ok, all right.")
				say("")
				say_reward("You receive "..item_name(85005)..".")
				say("")
				say("For repeat this mission, just open my letter.")
				say("")
				set_state("information")
			end
		end
	end
end