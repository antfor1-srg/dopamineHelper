-- made by alessandro without any help from arizona
-- use this script to help you make scripts...


Players = game:GetService("Players")


local functions = {
	Equipitem = equipitem,
	UnEquip = unequip,
	buyItem = buyitem,
}
function equipitem(name)
	if Players.LocalPlayer.Backpack:WaitForChild(name,0.25) ~= nil then
		Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):EquipTool(Players.LocalPlayer.Backpack[name])
	end
end
function unequip()
	Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):UnequipTools()
end
equipitem("Bat") -- if you hear this sound yk its my helper
wait(0.1)
unequip()

function buyitem(name)
	game:GetService("ReplicatedStorage").Packages.Net["RF/CoinsShopService/RequestBuy"]:FireServer(name)
end

return functions
