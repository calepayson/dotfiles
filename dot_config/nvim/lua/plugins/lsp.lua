return {
	{
		"williamboman/mason.nvim",
		config = true,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		dependencies = { "mason.nvim" },
		opts = {
			ensure_installed = { "pyright", "lua_ls" },
		},
	},
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		dependencies = { "mason.nvim" },
		opts = {
			ensure_installed = {
				"stylua",
				"ruff",
			},
		},
	},
	{
		"neovim/nvim-lspconfig",
		dependencies = { "mason-lspconfig.nvim" },
		config = function()
			vim.lsp.config.pyright = {
				cmd = { "pyright-langserver", "--stdio" },
				filetypes = { "python" },
				root_markers = { "pyproject.toml", "setup.py", ".git" },
			}

			vim.lsp.config.lua_ls = {
				cmd = { "lua-language-server" },
				filetypes = { "lua" },
				root_markers = { ".luarc.json", ".git" },
				settings = {
					Lua = {
						runtime = { version = "LuaJIT" },
						workspace = { library = vim.api.nvim_get_runtime_file("", true) },
					},
				},
			}

			vim.lsp.enable("pyright")
			vim.lsp.enable("lua_ls")

			vim.api.nvim_create_autocmd("LspAttach", {
				callback = function(args)
					local map = function(keys, func)
						vim.keymap.set("n", keys, func, { buffer = args.buf })
					end
					map("gd", vim.lsp.buf.definition)
					map("gr", vim.lsp.buf.references)
					map("K", vim.lsp.buf.hover)
					map("<leader>rn", vim.lsp.buf.rename)
					map("<leader>ca", vim.lsp.buf.code_action)
				end,
			})
		end,
	},
}
