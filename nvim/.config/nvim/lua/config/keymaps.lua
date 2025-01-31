local keymap = vim.keymap.set

keymap("n", "<leader>pv", "<CMD>Oil<CR>", { desc = "open parent directory" })
keymap("n", "<Esc>", "<CMD>nohlsearch<CR>")

keymap("n", "[d", vim.diagnostic.goto_prev)
keymap("n", "]d", vim.diagnostic.goto_next)
keymap("n", "<leader>e", vim.diagnostic.open_float)
keymap("n", "<leader>q", vim.diagnostic.setloclist)

keymap("t", "<Esc><Esc", "<C-\\><C-n>", { desc = "close terminal mode" })

keymap("v", "J", ":m '>+1<Cr>gv=gv")
keymap("v", "K", ":m '<-2<Cr>gv=gv")
keymap("n", "<C-d>", "<C-d>zz")
keymap("n", "<C-u>", "<C-u>zz")
