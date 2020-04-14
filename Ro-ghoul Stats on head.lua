while wait() do
	if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.F3) then
		for i, v in pairs(game.Players:GetChildren()) do
			if not v.Character.Head:FindFirstChild("StatsS") then
				local SG = Instance.new("BillboardGui", v.Character.Head)
				local text = Instance.new("TextLabel", SG)
				SG.Name = "StatsS"
				SG.MaxDistance = 100
				SG.AlwaysOnTop = true
				SG.StudsOffset = Vector3.new(0, 5.3, 0)
				SG.Size = UDim2.new(0,200,0,50)
				text.BackgroundTransparency = 1
				text.TextColor3 = Color3.fromRGB(255,0,0)
				text.TextSize = 15
				text.Font = "SourceSansBold"
				text.Text = "Name = " .. v.Name .. "\nLevel = ".. v.PlayerFolder.Stats.Level.Value .. "\nDurability = " .. v.PlayerFolder.Stats.Durability.Value .. "\nPunchPower = " .. v.PlayerFolder.Stats.Physical.Value .. "\nSpeed = " .. v.PlayerFolder.Stats.Speed.Value .. "\nKag or Quinkie strenght = " .. v.PlayerFolder.Stats.Weapon.Value 
				text.Size = UDim2.new(0,200,0,50)
			else
				v.Character.Head.StatsS.TextLabel.Text = "Name = " .. v.Name .. "\nLevel = ".. v.PlayerFolder.Stats.Level.Value .. "\nDurability = " .. v.PlayerFolder.Stats.Durability.Value .. "\nPunchPower = " .. v.PlayerFolder.Stats.Physical.Value .. "\nSpeed = " .. v.PlayerFolder.Stats.Speed.Value .. "\nKag or Quinkie strenght = " .. v.PlayerFolder.Stats.Weapon.Value
			end
		end
		print("Updated!")
	end
end