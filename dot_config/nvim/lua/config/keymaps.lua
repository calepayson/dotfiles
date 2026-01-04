local map = vim.keymap.set

print("keymaps loaded")

-- better window navigation
map("n", "<C-j>", "<C-w>j")
map("n", "<C-h>", "<C-w>h")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-l>", "<C-w>l")

-- clear search highlight
map("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- better indenting (stays in visual mode)
map("v", "<", "<gv")
map("v", ">", ">gv")

-- move lines up/down
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

-- easy explore mode
map("n", "<leader>e", ":Ex<CR>")
