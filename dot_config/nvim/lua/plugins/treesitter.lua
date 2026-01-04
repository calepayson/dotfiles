return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	event = { "BufReadPost", "BufNewFile" },
	config = function()
		require("nvim-treesitter").setup({
			ensure_installed = {
				"python",
				"lua",
				"bash",
				"json",
				"yaml",
				"markdown",
				"markdown_inline",
			},
		})

		vim.o.foldmethod = "expr"
		vim.o.foldexpr = "v:lua.vim.treesitter.foldexpr()"
		vim.o.foldenable = false -- disable folding by default
	end,
}
