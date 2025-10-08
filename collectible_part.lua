local part = script.Parent

part.Touched:Connect(function(hit)
	local player = game.Players:GetPlayerFromCharacter(hit.Parent)
	if player then
		local ls = player:FindFirstChild("leaderstats")
		if ls and ls:FindFirstChild("Score") then
			ls.Score.Value = ls.Score.Value + 1
			part:Destroy()
		end
	end
end)
