local opt = vim.opt
local g = vim.g

-- Enable default syntax highlighting (optional)
vim.cmd('syntax on')

-- Enable filetype detection and plugins
vim.cmd('filetype plugin indent on')

-- Set numbers to the left
vim.opt.number = true

-- Ignore case
vim.opt.ignorecase = true

-- Smart case
vim.opt.smartcase = true

-- Ignore results of previous search
vim.opt.hlsearch = false

-- Default tab size
vim.opt.tabstop = 4

-- Tranform tabs into spaces
vim.opt.smarttab = true

-- Auto indent
vim.opt.ai = true

-- Smart case
vim.opt.smartcase = true

-- Relative number
vim.opt.relativenumber = true

-- Ruler 
vim.opt.ruler = true

-- swapfile
vim.opt.swapfile = false

opt.showcmd = true
-- opt.textwidh = 80

-- Pastebuffer
vim.opt.clipboard = "unnamedplus" -- System clipboard

