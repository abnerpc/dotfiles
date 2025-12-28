local opt = vim.opt
local g = vim.g

-- Leader
g.mapleader = " "
g.maplocalleader = " "

-- Editor settings
opt.encoding = "utf-8"
opt.wrap = false
opt.number = true
opt.cursorline = true
opt.list = true

-- Tabs & indent
opt.expandtab = true
opt.smartindent = false
opt.autoindent = false
opt.cindent = false

-- Search
opt.ignorecase = true
opt.smartcase = true

-- Files
opt.backup = false
opt.writebackup = false
opt.swapfile = false

-- Mouse & UI
opt.mouse = "a"
opt.wildmenu = true

-- Netrw
g.netrw_banner = 0
g.netrw_list_hide = ".*\\.swp$,.*\\.pyc$,.git,.idea,.pytest_cache,.vscode"
g.netrw_localrmdir = "rm -r"

