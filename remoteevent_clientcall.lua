-- RemoteEvent (di ReplicatedStorage pada Studio):

-- Server: ServerSciprtService/script
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local remote = Instance.new("RemoteEvent")
remote.Name = "GivePoint"
remote.Parent = ReplicatedStorage

remote.OnServerEvent:connect(function(player, amount)
    -- pastikan server memvalidasi amount
    local ls = player:FindFirstChild("leaderstats")
    if ls and ls:FindFirstChild("Score") then 
      ls.Score.Value = ls.Score.Value + amount
    end
end)


-- Client memanggilnya (LocalScipt):

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local remote = ReplicatedStorage:WaitForChild("GivePoint")

-- ketika tombol di GUI ditekan:
remote:FireServer(10) -- minta server tambah 10 GivePoint

