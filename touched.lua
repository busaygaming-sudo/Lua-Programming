local part = workspace:waitForChild("part") -- contoh part bernama "Part"

part.Touched:Connect(function(hit)
  local humanoid = hit.parent:FindFirstChildOfClass("humanoid")
  if humanoid then
    print("Player touched the part")
  end
end)
