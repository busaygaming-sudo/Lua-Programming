local function faktorial(n)
	if n == 0 then
		return 1
	else
		return n * faktorial(n - 1)
	end
end

print(faktorial(5)) -- Output: 120
