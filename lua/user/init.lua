local top_module = "user"
local paths = { "remap", "lazy", "plugins", "colorscheme", "options" }

for _, path in pairs(paths) do
	require(top_module .. "." .. path) 
end
