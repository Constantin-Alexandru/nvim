return {
	"lervag/vimtex",
	lazy = false,
	init = function()
		vim.g.vimtex_view_general_viewer = "SumatraPDF"
		vim.g.vimtex_view_general_options = "-reuse-instance -forward-search @tex @line @pdf"
		vim.g.vimtex_compiler_method = "tectonic"

		vim.api.nvim_create_autocmd("BufWritePost", {
			pattern = "*.tex",
			callback = function()
				vim.cmd("VimtexCompile")
			end,
		})
	end,
}
