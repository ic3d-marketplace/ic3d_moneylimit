
local MoneyCount = 700000000 -- Replace this with your max money threshold


RegisterServerEvent('ic3d_moneylimit:checkmax')
AddEventHandler('ic3d_moneylimit:checkmax', function()
    local xPlayer = ESX.GetPlayerFromId(source)
	if xPlayer ~= nil then
		local money = xPlayer.getMoney()
		local bank = xPlayer.getAccount('bank').money
		local blackMoney = xPlayer.getAccount('black_money').money
		local group = xPlayer.getGroup()
		
	

		if group ~= 'admin' then
			-- Corrected check
			if money >= MoneyCount or bank >= MoneyCount or blackMoney >= MoneyCount then
				-- If any of the accounts exceed the MoneyCount limit
				print(GetPlayerName(xPlayer.source) .. ' has more money than the allowed limit. Money: ' .. money .. ', Bank: ' .. bank .. ', Black Money: ' .. blackMoney)
				-- Drop the player if necessary
				DropPlayer(xPlayer.source, 'Tens mais dinheiro do que é permitido, 700M')
				
				-- Optional: Send to Discord Webhook (Uncomment the code below to enable)
				-- PerformHttpRequest('https://discord.com/api/webhooks/1324403858495111228/UuaKiaT3cvX99RUFMb0bZ_2fZOUMXEGonKD4oVvXaCzXZoZ_H7PUt_K-K2XDSZvNS81Q', function(err, text, headers) end, 'POST', json.encode({
				--     username = 'MoneySystem',
				--     content = ':warning: ' .. GetPlayerName(xPlayer.source) .. ' has ' .. xPlayer.getAccount('bank').money .. '$ (DINERO-BANKO)',
				--     avatar_url = 'https://pbs.twimg.com/profile_images/847824193899167744/J1Teh4Di_400x400.jpg'
				-- }), { ['Content-Type'] = 'application/json' })
			end
		else
			print(GetPlayerName(xPlayer.source) .. ' has more money than the allowed limit but it is ADMIN. Money: ' .. money .. ', Bank: ' .. bank .. ', Black Money: ' .. blackMoney)
		end
	end
end)

