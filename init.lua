-- ************************************************************************** --
--                                                                            --
--                                                            ::::::::        --
--   init.lua                                                :+:    :+:       --
--                                                          +:+               --
--   By: dponte <dponte@student.codam.nl>                  +#+                --
--                                                        +#+                 --
--   Created: 2025/03/18 19:01:23 by dponte              #+#    #+#           --
--   Updated: 2025/03/18 19:01:41 by dponte              ########   odam.nl   --
--                                                                            --
--                       ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡯⠟⠛⠋⠉⠉⠉⠉⠉⠙⠛⠓⠿⠿⣟⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿   --
--                       ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡯⠞⠋⢁⡀⠤⠀⠒⠀⠀⠀⠐⠒⠠⢀⠢⠀⠀⠀⠉⠛⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿   --
--                       ⣿⣿⣿⣿⣿⡿⣿⠽⠛⠃⣀⠔⠉⠀⠀⠀⠀⢀⣀⣀⣤⣤⠤⠤⠄⠈⠀⠑⢀⡀⠀⠀⠈⠙⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿   --
--                       ⣿⣿⠿⠛⠿⠛⠃⠀⠀⡁⠁⠀⢀⣠⣴⣾⡿⠛⠉⠁⠀⠀⠀⠀⣀⢴⠤⢄⡀⠀⠀⠀⠀⠀⠀⠈⠻⠟⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿   --
--                       ⡿⡿⢦⠀⠀⠀⠀⠄⠀⠀⠀⠀⢀⣴⣿⣫⠤⠔⠚⠛⠒⠒⠚⠛⠯⠙⠢⡕⠈⠢⠀⠀⠀⠀⠀⠀⠀⠀⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿   --
--                       ⣷⡇⠘⡄⠀⠀⠈⠀⠀⠀⠠⢴⡾⠛⠁⠀⠀⠀⠀⠂⠀⠀⠀⠀⠀⠀⠀⠸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿   --
--                       ⣿⡇⠄⠚⠦⢀⣀⣧⠤⠔⠒⠛⣉⣉⣉⣉⣉⣉⣉⡁⢻⣦⡀⠀⠀⠄⣴⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣿⣿⣿⣿⣿⣿⣿⣿⣿   --
--                       ⡿⠁⢀⠤⠒⣉⡥⠴⠖⢛⡯⣍⠉⢉⠤⢤⡀⢀⠬⣍⢉⠿⢿⣦⡀⠈⢻⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣿⣿⣿⣿⣿⣿⣿⣿   --
--                       ⡇⠠⣡⢴⡟⠓⠦⡀⣰⠃⠀⠈⠳⠁⠀⠀⠻⠃⠀⠘⠋⠀⠀⠷⠓⡀⠀⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⣿⣿⣿⣿⣿⣿⣿   --
--                       ⣷⣾⠣⡾⠀⠀⠀⠈⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⢄⠀⢀⠀⠀⠀⠀⠀⠀⠆⠘⡄⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿   --
--                       ⣿⣿⠀⠠⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠀⠀⠀⠀⠀⡀⠀⢀⠀⣀⣼⣆⠈⢧⡀⠀⠀⠀⠀⠸⠀⢹⡀⠀⠀⠀⠸⣿⣿⣿⣿⣿⣿⣿   --
--                       ⣿⣿⣇⠀⠀⠀⢀⣀⢠⠤⠐⠶⠂⠐⠒⠈⢹⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣆⠈⢗⠀⠀⠀⠀⠀⣇⠀⢇⠀⠀⠀⠀⡷⣿⣿⣿⣿⣿⣿   --
--                       ⣿⣿⣿⣷⣄⣌⠀⠀⠀⠀⠀⣀⣀⣤⣄⣤⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣆⠈⢆⠀⠀⠀⠀⢸⠀⠘⠀⠀⠀⠀⣁⣿⣿⣿⣿⣿⣿   --
--                       ⣿⣿⣿⣿⣷⡿⡿⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣆⠈⢾⡄⠀⠀⠘⡇⠀⠀⠀⠀⢰⣷⣿⣿⣿⣿⣿⣿   --
--                       ⣿⣿⣿⣿⣿⣿⣿⡀⠹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⠈⠇⠀⠀⠀⣧⠀⠀⠀⠀⣸⣻⣿⣿⣿⣿⣿⣿   --
--                       ⣿⣿⣿⣿⣿⣿⣿⣷⠀⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠿⢿⣿⣿⣧⠀⠄⠀⠀⢠⠀⠀⢰⣠⣯⣿⣿⣿⣿⣿⣿⣿   --
--                       ⣿⣿⣿⣿⣿⣿⣿⣿⣇⠀⢻⣿⣿⣿⢿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠟⠛⠃⠀⠀⠀⠉⢻⣿⠀⠀⠀⠀⢸⠀⠀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿   --
--                       ⣿⣿⣿⣿⣿⣿⣿⣿⡿⣠⠴⠟⢋⡁⠾⠿⠋⠙⠻⠋⠉⠉⠉⠀⠀⠀⠀⠀⢠⣀⣀⣠⠏⠀⡸⠀⠀⢸⠀⣰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿   --
--                       ⣿⣿⣿⣿⣿⣿⣿⣿⢱⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⡖⠤⣤⣀⣼⡷⠞⢁⣠⣾⠃⠀⠀⣼⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿   --
--                       ⣿⣿⣿⣿⣿⣿⣿⣗⡇⠀⣀⠀⠀⠀⠀⠀⢀⡀⠀⠀⣤⣀⠀⣰⣡⣴⠖⠻⣕⠀⢺⠻⠊⠁⠀⣠⣾⣯⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿   --
--                       ⣿⣿⣿⣿⣿⣿⣿⠘⢧⡴⠛⣆⣠⠖⢄⣀⣞⣉⣲⡾⠵⠚⠋⠉⠐⠈⠀⠉⠛⠓⠀⠀⠒⠒⠿⠹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿   --
--                       ⣿⣿⣿⣿⣿⣿⣿⣷⣄⡉⠛⠛⠛⢛⣛⣉⣩⣥⡄⠒⠂⠀⠀⠀⠁⠉⠀⢀⣠⣌⣷⣖⣤⣄⣀⠘⠻⣻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿   --
--                       ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣯⣭⣭⣭⣿⣿⣻⣿⣷⣷⣷⣶⣶⣶⣶⣺⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣵⣆⣬⣘⣻⢿⣿⣿⣿⣿⣿⣿⣿⣿   --
--                       ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣿⣿⣿⣿⣿⣿⣿⣿⣿   --
--                       ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣭⣛⣿   --
-- ************************************************************************** --

-- Modular Structure Setup
local function load_modules()
  -- Load core settings first
  require('options')         -- Basic vim options

  -- Import filetype settings
  require('filetypes').setup()
  
  -- Load plugin configurations
  require('plugins.treesitter')
  require('plugins.lsp')
  require('plugins.telescope')
  require('plugins.codam-header')
end

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
  -- Package managger
  use { 'wbthomason/packer.nvim'} -- Packer itself

  -- Core dependencies
  use { 'nvim-lua/plenary.nvim', module = 'plenary' }

  -- Syntax/parsing
  use {
    'nvim-treesitter/nvim-treesitter' ,
    run = 'TSupdate',
    commit = 'e8b123a',  -- Pinned stable commit
    config = require('plugins.treesitter').config
  } 

  -- Autoformatting
  use { 'jose-elias-alvarez/null-ls.nvim' }

  -- LSP
  use {
   'neovim/nvim-lspconfig',
   after = 'nvim-treesitter',
   config = require('plugins.lsp').config
  }

  -- Autocompletion 
  use {
    'hrsh7th/nvim-cmp',
    config = require('plugins.cmp').config
  }
  use { 'hrsh7th/cmp-nvim-lsp' }  -- LSP source for nvim-cmp
  use { 'hrsh7th/cmp-buffer' }    -- Buffer completions
  use { 'hrsh7th/cmp-path' }      -- Path completions

  -- Fuzzy finder
  use {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    requires = { 'nvim-lua/plenary.nvim' },
    config = require('plugins.telescope').config
  }

  -- UI
  use {
    'kyazdani42/nvim-web-devicons',
    config = function()
      require('nvim-web-devicons').setup({ default = true })
    end
  }

  -- Codam header
  use {
	"BeerB34r/codam-header.nvim",
	cmd = "Stdheader",
	config = require('plugins.codam-header').config
  }
  -- Themes
  use 'folke/tokyonight.nvim'
  use {
    'tanvirtin/monokai.nvim',
    config = function()
      pcall(vim.cmd, [[colorscheme monokai]])
      require('monokai').setup { palette = require('monokai').pro }
    end
  }
  
  -- Auto-install and update Treesitter
  if packer_bootstrap then
    require('packer').sync()
  end
end)

-- specify on c files that commentstring == '/*%s*/', default == '//%s'

-- Load modules with error handling
local ok, err = pcall(load_modules)
if not ok then
  vim.notify("Error loading config: " .. tostring(err), vim.log.levels.ERROR)
end
