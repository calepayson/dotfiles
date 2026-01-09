return {
	"folke/zen-mode.nvim",
	opts = {
		window = {
			width = 80,
			options = {
				number = false,
				relativenumber = false,
				signcolumn = "no",
			},
		},
		plugins = {
			twilight = { enabled = true },
			gitsigns = { enabled = false },
		},
	},
	keys = {
		{ "<leader>z", "<cmd>ZenMode<cr>", desc = "Zen Mode" },
	},
}
