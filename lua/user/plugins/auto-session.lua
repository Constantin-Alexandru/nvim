return {
	"rmagatti/auto-session",
	config = function()
		local auto_session = require("auto-session")

		auto_session.setup({
			auto_restore_enabled = false,
			auto_session_surpress_dirs = {},
		})

		local keymap = vim.keymap.set

		keymap("n", "<leader>wr", "<cmd>SessionRestore<CR>", { desc = "Restore session for cwd" })
		keymap("n", "<leader>ws", "<cmd>SessionSave<CR>", { desc = "Save session for root dir" })
	end,
}
