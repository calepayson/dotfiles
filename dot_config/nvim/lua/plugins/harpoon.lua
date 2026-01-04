return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim" },
	keys = {
		{
			"<leader>a",
			function()
				require("harpoon"):list():add()
			end,
			desc = "Harpoon add",
		},
		{
			"<leader>h",
			function()
				require("harpoon").ui:toggle_quick_menu(require("harpoon"):list())
			end,
			desc = "Harpoon menu",
		},
		{
			"<leader>q",
			function()
				require("harpoon"):list():select(1)
			end,
			desc = "Harpoon 1",
		},
		{
			"<leader>w",
			function()
				require("harpoon"):list():select(2)
			end,
			desc = "Harpoon 2",
		},
	},
	config = function()
		require("harpoon"):setup()
	end,
}
