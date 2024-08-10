return {
	"rmagatti/auto-session",
	config = function()
		local auto_session = require("auto-session")

		auto_session.setup({
			auto_restore_enabled = false,
			auto_session_surpress_dirs = {},
		})

		local map = require("helpers.keymap").map

		map("n", "<leader>wr", "<cmd>SessionRestore<CR>", "Restore session for cwd")
		map("n", "<leader>ws", "<cmd>SessionSave<CR>", "Save session for root dir")
	end,
}
