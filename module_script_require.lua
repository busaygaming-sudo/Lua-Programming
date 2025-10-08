-- Contoh ModuleScript (ModuleScript di ServerScriptService):
local M = {}

function M.sayHello(name)
  print("Hello, "..name)
end

return M

-- Pemanggil dari Script:(tempatkan terpisah)

local mod = require(game.ServerScriptService:WaitForChild("ModuleScriptName"))
mod.sayHello("Asep")