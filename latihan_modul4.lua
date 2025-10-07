-- Buat daftar warna untuk 5 part
local warnaList = {
  Color3.new(1, 0, 0), -- Merah
  Color3.new(0, 1, 0), -- Hijau
  COlor3.new(0, 0, 1), -- Biru
  Color3.new(1, 1, 1), -- Kuning
  Color3.new(1, 0, 1), -- Ungu
}

-- Loop untuk membuat 5 part
for i = 1, 5 do
  local part = Instance.new("part")
  part.Size = Vector3.new(4, 1, 4)            -- ukuran setiap part
  part.Anchored = true                        -- agar tidak jatuh
  part.Color = warnaList[i]                   -- ambil warna sesuai urutan
  part.Position = Vector3.new(i * 6, 5, 0)    -- posisikan di sumbu X (jarak antar part = 6)
  part.Name = "Part_" .. 1                    -- beri nama unik
  part.Parent = workspace                     -- masukan ke dunia game
end
