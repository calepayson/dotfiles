return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	opts = {
		spec = {
			{ "<leader>f", group = "find" },
			{ "<leader>h", group = "hunk" },
			{ "<leader>d", group = "diff" },
			{ "<leader>t", group = "todo" },
		},
	},
}
