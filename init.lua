-- ************************************************************************** --
--                                                                            --
--                                                       ::::::::             --
--   init.lua                                          :+:    :+:             --
--                                                    +:+                     --
--   By: dponte <dponte@student.codam.nl>            +#+                      --
--                                                  +#+                       --
--   Created: 2025/02/18 15:32:26 by dponte       #+#    #+#                  --
--   Updated: 2025/02/18 15:40:10 by dponte       ########   odam.nl          --
--                                                                            --
-- ************************************************************************** --

--plug#begin('~/.neovim-plugins')
--
--set ruler
--set number
--set ai
--set smartcase

-- Bootstrap Packer
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

-- Initialize Packer
require('packer').startup(function(use)
  use 'wbthomason/packer.nvim' -- Packer itself
  use 'nvim-treesitter/nvim-treesitter' -- Treesitter for syntax highlighting

  -- Other useful plugins
  use 'nvim-lua/plenary.nvim' -- Useful Lua functions used by lots of plugins
  use 'kyazdani42/nvim-web-devicons' -- Icons for file types

  -- Themes
  use 'folke/tokyonight.nvim'
  use {
	'tanvirtin/monokai.nvim',
  	config = function()
		require('monokai').setup { palette = require('monokai').classic }
  	end
  }
--  use {
--   "loctvl842/monokai-pro.nvim",
--   config = function()
--     require("monokai-pro").setup()
--   end
--  }

  -- Codam header
  -- specify on c files that commentstring == '/*%s*/', default == '//%s'
  use {
    "BeerB34r/codam-header.nvim",
    cmd = { "Stdheader" },
    config = function()
      require("codamheader").setup {
        --default_map = true, -- Default mapping <F1> in normal mode.
        auto_update = true, -- Update header when saving.
        user = "dponte", -- Your user.
        mail = "dponte@student.codam.nl", -- Your mail.
        ---Git config.
    git = {
      ---Enable Git support.
      enabled = false,
      ---PATH to the Git binary.
      bin = "git",
      ---Use global user.name, otherwise use local user.name.
      user_global = true,
      ---Use global user.email, otherwise use local user.email.
      email_global = true,
    },
    exascii = {
    },
    exascii_left = false --left-justified?
        }
      end,
  }

  -- Auto-install and update Treesitter
  if packer_bootstrap then
    require('packer').sync()
  end
end)

-- Enable Treesitter
require('nvim-treesitter.configs').setup {
  highlight = {
    enable = true, -- Enable syntax highlighting
  },
  ensure_installed = { "lua", "python", "javascript", "typescript", "html",
  "css", "json", "markdown", "c", "rust", "cpp"}, -- List of languages to install
}


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

-- Doesn't tranform tabs into spaces
vim.opt.smarttab = false

-- Auto indent
vim.opt.ai = true

-- Smart case
vim.opt.smartcase = true

-- Relative number
vim.opt.relativenumber = true

-- Ruler 
vim.opt.ruler = true

-- Set a theme 
--vim.cmd('colorscheme tokyonight')
--vim.cmd([[colorscheme monokai-pro]])
--vim.cmd('colorscheme monokai')


