return {
	"iamcco/markdown-preview.nvim",
	cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
	ft = { "markdown" },
	build = function()
		vim.fn["mkdp#util#install"]()
	end,
	config = function()
		-- vim.g.mkdp_preview_option

		require("helpers.keymap").map("n", "<leader>md", "<cmd>MarkdownPreviewToggle<cr>")
	end,
}
