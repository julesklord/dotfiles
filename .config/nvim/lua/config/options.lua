-- Global Leader
vim.g.mapleader = " "
vim.g.maplocalleader = " "

local opt = vim.opt

-- Tab & Indentation
opt.shiftwidth = 2
opt.tabstop = 2
opt.softtabstop = 2
opt.expandtab = true
opt.autoindent = true

-- Search settings
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = true
opt.incsearch = true

-- Line numbers & UI
opt.number = true
opt.relativenumber = true -- Great for jumping lines quickly
opt.cursorline = true
opt.showmatch = true
opt.wrap = false
opt.lazyredraw = true

-- System Clipboard integration (Native & automatic)
opt.clipboard = "unnamedplus"

-- Undo history persistence
opt.undofile = true
opt.undodir = vim.fn.expand("~/.local/share/nvim/undo")

-- Ignore patterns (equivalent to wildignore)
opt.wildignorecase = true
opt.wildignore = {
  "*.o", "*.obj", "*.bin", "*.dll", "*.exe",
  "*/.git/*", "*/.hg/*", "*/.svn/*", "*/.DS_Store",
  "*.pyc", "__pycache__",
  "*.png", "*.jpg", "*.jpeg", "*.gif", "*.webp",
  "*.mp4", "*.mkv", "*.mp3", "*.pdf", "*.zip", "*.tar.gz"
}

-- Custom user commands (ported from your old .vimrc)
vim.api.nvim_create_user_command("Chmodx", "!chmod a+x %", {})
vim.api.nvim_create_user_command("Nows", "%s/\\s\\+$//e", {})
vim.api.nvim_create_user_command("Nobl", "g/^\\s*$/d", {})
vim.api.nvim_create_user_command("J", "%!python -m json.tool", {})
