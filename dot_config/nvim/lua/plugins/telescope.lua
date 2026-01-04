return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	},
	keys = {
		{ "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find files" },
		{ "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Live grep" },
		{ "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Buffers" },
		{ "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Help tags" },
		{ "<leader>fr", "<cmd>Telescope oldfiles<cr>", desc = "Recent files" },
		{ "<leader>fs", "<cmd>Telescope lsp_document_symbols<cr>", desc = "Document symbols" },
		{ "<leader>fw", "<cmd>Telescope grep_string<cr>", desc = "Grep word under cursor" },
		{ "<leader>/", "<cmd>Telescope current_buffer_fuzzy_find<cr>", desc = "Fuzzy find in buffer" },
	},
	config = function()
		local telescope = require("telescope")
		telescope.setup({
			pickers = {
				find_files = { hidden = true },
			},
		})
		telescope.load_extension("fzf")
	end,
}
