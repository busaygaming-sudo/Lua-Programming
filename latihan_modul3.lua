-- Table inventory awal (kosong)
local inventory = {}

-- Fungsi untuk menambah item
local function addItem(name, qty)
  -- Jika item belum ada di inventory, buat nilainya 0 dulu
  if inventory[name] == nil then
      inventory[name] = 0
  end

  -- Tambahkan Jumlahnya
  inventory[name] = inventory[name] + qty
  
  -- Tampilkan hasil setelah ditambah
  print("Item:", name, "Jumlah:", inventory[name])
end

-- Contoh penggunaan Fungsi
addItem("Potion", 3) -- Tambah 3 Potion
addItem("ELixir", 1) -- Tambah 1 ELixir
addItem("Potion", 2) -- Tambah lagi 2 Potion
addItem("Sword", 1) -- Tambah 1 Sword

-- Tampilkan seluruh isi inventory
print("\nIsi Inventory")
for name, qty in pairs(inventory) do
    print(name, qty)
end