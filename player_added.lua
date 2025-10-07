local Players = game:GetService("Players")

Players.PlayerAdded:Connect(function(player)
  print(player.Name .. " Joined the game")
end)