-- LocalScript di StarterGui

local Players = game:GetService("Players")
local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "CustomJumpGui"
screenGui.Parent = playerGui

local jumpButton = Instance.new("TextButton")
jumpButton.Size = UDim2.new(0, 160, 0, 160)
jumpButton.Position = UDim2.new(1, -170, 1, -170) -- pojok kanan bawah
jumpButton.AnchorPoint = Vector2.new(0, 0)
jumpButton.Text = "Jump"
jumpButton.Parent = screenGui

jumpButton.TouchEnded:Connect(function()
	local character = player.Character
	if character then
		local humanoid = character:FindFirstChildOfClass("Humanoid")
		if humanoid then
			humanoid.Jump = true
		end
	end
end)
