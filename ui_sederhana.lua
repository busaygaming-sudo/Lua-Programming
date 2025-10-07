local player = game.Players.LocalPlayer
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = player:WaitForChild("PlayerGui")

local btn = Instance.new("TextButton")
btn.Size = UDim2.new(0, 150, 0, 60)
btn.Position = UDim2.new(0.5, -75, 0.9, -70)
btn.Text = "Klik Aku"
btn.Parent = screenGui

btn.MouseButton1Click:Connect(function()
	print("Tombol diklik oleh " .. player.Name)
end)


