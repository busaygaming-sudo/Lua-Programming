-- Ambil Part dari workspace
local part = workspace:WaitForChild("Part")

-- Hubungkan event Touched ke fungsi
part.Toched:Connect(function(hit)
  -- Cek apakah yang menyentuh punya Humanoid (berarti pemain/NPC)
  local humanoid = hit.Parent:FindFirstChildOfClass("humanoid")
  
  if humanoid then
    print("Teleport") -- Pesan muncul di Output Roblox Studio
  end
end)
