local keymap = vim.keymap

-- General keymaps
-- Clear search highlights
keymap.set("n", "<leader>h", ":nohlsearch<CR>", { silent = true, desc = "Clear search highlight" })

-- Easy window navigation
keymap.set("n", "<C-h>", "<C-w>h", { desc = "Go to Left Window" })
keymap.set("n", "<C-j>", "<C-w>j", { desc = "Go to Lower Window" })
keymap.set("n", "<C-k>", "<C-w>k", { desc = "Go to Upper Window" })
keymap.set("n", "<C-l>", "<C-w>l", { desc = "Go to Right Window" })

-- Terminal mode escapes
keymap.set("t", "<Esc>", "<C-\\><C-n>", { desc = "Escape terminal mode" })

-- Keep cursor in center when scrolling half-page
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")

-- Visual mode paste override (keeps clipboard contents)
keymap.set("x", "<leader>p", [["_dP]])

-- Save & Quit shortcuts
keymap.set("n", "<leader>w", ":w<CR>", { desc = "Save buffer" })
keymap.set("n", "<leader>q", ":q<CR>", { desc = "Quit window" })
