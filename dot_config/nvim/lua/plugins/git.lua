return {
	{
		"lewis6991/gitsigns.nvim",
		event = { "BufReadPre", "BufNewFile" },
		keys = {
			{ "]]", "<cmd>Gitsigns next_hunk<cr>", desc = "Next hunk" },
			{ "[[", "<cmd>Gitsigns prev_hunk<cr>", desc = "Prev hunk" },
			{ "<leader>hp", "<cmd>Gitsigns preview_hunk<cr>", desc = "Preview hunk" },
			{ "<leader>hs", "<cmd>Gitsigns stage_hunk<cr>", desc = "Stage hunk" },
			{ "<leader>hr", "<cmd>Gitsigns reset_hunk<cr>", desc = "Reset hunk" },
			{ "<leader>hb", "<cmd>Gitsigns blame_line<cr>", desc = "Blame line" },
		},
		opts = {},
	},
	{
		"sindrets/diffview.nvim",
		cmd = { "DiffviewOpen", "DiffviewFileHistory" },
		keys = {
			{ "<leader>do", "<cmd>DiffviewOpen<cr>", desc = "Diffview open" },
			{ "<leader>dm", "<cmd>DiffviewOpen main...HEAD<cr>", desc = "Diff branch vs main" },
			{ "<leader>dh", "<cmd>DiffviewFileHistory %<cr>", desc = "File history" },
			{ "<leader>dq", "<cmd>DiffviewClose<cr>", desc = "Diffview close" },
		},
		opts = {},
	},
}
