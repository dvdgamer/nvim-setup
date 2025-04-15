local opt = vim.opt
local g = vim.g

-- Enable default syntax highlighting (optional)
vim.cmd('syntax on')

-- Enable filetype detection and plugins
vim.cmd('filetype plugin indent on')

-- Set numbers to the left
vim.opt.number = true

-- Enable breakindent = true
vim.opt.breakindent = true

-- Save undo history
vim.opt.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Ignore results of previous search
vim.opt.hlsearch = false

-- Default tab size
vim.opt.tabstop = 2

-- Tranform tabs into spaces
vim.opt.smarttab = false

-- Auto indent
vim.opt.ai = true

-- Keep signcolumn on by default
vim.opt.signcolumn = 'yes'

-- Smart case
vim.opt.smartcase = true

-- Relative number
vim.opt.relativenumber = true

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'
--  and `:help 'listchars'
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Ruler
vim.opt.ruler = true

-- KEYMAPS --
-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

vim.keymap.set('n', '<leader>kt', ':Telescope colorscheme<CR>', { desc = 'Choose colorscheme' })
vim.keymap.set('n', '<leader>ff', ':Telescope find_files<CR>', { desc = 'Find Files'})
vim.keymap.set('n', '<C-b>', ':NvimTreeToggle<CR>', { desc = 'Toggle NvimTree'})


-- Preview substitutions live, as you type!
vim.opt.inccommand = 'split'

-- Show which line your cursor is on
vim.opt.cursorline = true

-- swapfile
vim.opt.swapfile = false

vim.opt.showcmd = true
vim.opt.textwidth = 80

-- Pastebuffer
vim.opt.clipboard = "unnamedplus" -- System clipboard

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
