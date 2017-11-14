quest ep_kupon begin
	state start begin
		function give_bonus_coins(account, count)
			mysql_query("UPDATE account.account SET coins=coins+'"..count.."' WHERE id='"..account.."'")
			syschat("Ep kuponu deðerinde:  "..count.." bozuldu.")
		end
		when 80014.use or 80015.use or 80016.use or 80017.use begin
			local tableByVnum = 
			{
				[80014] = 100,
				[80015] = 500,
				[80016] = 1000,
				[80017] = 50,
			}
			if pc.count_item(item.get_vnum()) < 1 then
				say_title("Ep Kuponu")
				say("")
				say_reward("Envanterinde ep kuponu bulamadým.")
				return
			end
			ep_kupon.give_bonus_coins(pc.get_account_id(), tableByVnum[item.get_vnum()])
			pc.remove_item(item.get_vnum(), 1)
		end
	end
end