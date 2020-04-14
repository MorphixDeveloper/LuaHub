while wait() do
	if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.F2) then
		for i, v in pairs(game.Players:GetChildren()) do
			if not v.Character.Head:FindFirstChild("StatsS") then
				local SG = Instance.new("BillboardGui", v.Character.Head)
				local text = Instance.new("TextLabel", SG)
				SG.Name = "StatsS"
				SG.MaxDistance = 10000
				SG.AlwaysOnTop = true
				SG.StudsOffset = Vector3.new(0, 5.3, 0)
				SG.Size = UDim2.new(0,200,0,50)
				text.BackgroundTransparency = 1
				text.TextColor3 = Color3.fromRGB(255,0,0)
				text.TextSize = 15
				text.Font = "SourceSansBold"
				text.Text = "|\n" .. " v" 				
				text.Size = UDim2.new(0,200,0,50)
			else
				v.Character.Head.StatsS.TextLabel.Text = "|\n" .. " v" 
			end
		end
		print("Updated!")
	end
end