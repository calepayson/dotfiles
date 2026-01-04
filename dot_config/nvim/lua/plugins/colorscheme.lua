return {
	{
		"rebelot/kanagawa.nvim",
		priority = 1000,
		config = function()
			require("kanagawa").setup({
				colors = {
					theme = {
						wave = {
							ui = {
								bg = "#0d0d0d",
								bg_gutter = "#0d0d0d",
								bg_dim = "#080808",
								bg_m3 = "#080808",
								bg_m2 = "#0a0a0a",
								bg_m1 = "#0d0d0d",
								bg_p1 = "#151515",
								bg_p2 = "#1a1a1a",
							},
						},
					},
				},
			})
			vim.cmd.colorscheme("kanagawa-wave")
		end,
	},

	-- {
	-- 	"folke/tokyonight.nvim",
	-- 	priority = 1000,
	-- 	config = function()
	-- 		require("tokyonight").setup({
	-- 			style = "night",
	-- 			on_colors = function(colors)
	-- 				colors.bg = "#0d0d0d"
	-- 				colors.bg_dark = "#080808"
	-- 				colors.bg_float = "#0a0a0a"
	-- 				colors.bg_popup = "#0a0a0a"
	-- 				colors.bg_sidebar = "#080808"
	-- 				colors.bg_statusline = "#0a0a0a"
	-- 			end,
	-- 		})
	-- 		vim.cmd.colorscheme("tokyonight")
	-- 	end,
	-- },
}
