return {
	"saghen/blink.cmp",
	version = "*",
	event = "InsertEnter",
	opts = {
		keymap = {
			preset = "default",
			["<C-p>"] = { "select_prev", "fallback" },
			["<C-n>"] = { "select_next", "fallback" },
			["<C-y>"] = { "accept", "fallback" },
			["<C-k>"] = { "snippet_forward", "fallback" },
			["<C-j>"] = { "snippet_backward", "fallback" },
		},
		sources = {
			default = { "lsp", "path", "buffer", "snippets" },
		},
		completion = {
			documentation = { auto_show = true },
		},
	},
}
