return {
	"Mofiqul/dracula.nvim",
	config = function()
		require("helpers.colorscheme").set_if_available("dracula")
    
    local dracula = require("dracula")

    dracula.setup({
      transparent_bg = true,
    })
	end
}
