return {
	"folke/todo-comments.nvim",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = { "nvim-lua/plenary.nvim" },
	keys = {
		{
			"<leader>t",
			function()
				require("todo-comments").jump_next()
			end,
			desc = "Next todo",
		},
		{
			"<leader>tt",
			function()
				require("todo-comments").jump_prev()
			end,
			desc = "Prev todo",
		},
		{ "<leader>td", "<cmd>Trouble todo toggle<cr>", desc = "Todos (Trouble)" },
	},
	opts = {},
}
