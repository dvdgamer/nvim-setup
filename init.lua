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
  use 'neovim/nvim-lspconfig'  --LSP 
  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.8',      -- Telescope
  -- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Other useful plugins
  use 'nvim-lua/plenary.nvim' -- Useful Lua functions used by lots of plugins
  use 'kyazdani42/nvim-web-devicons' -- Icons for file types

  -- Themes
  use 'folke/tokyonight.nvim'
  use {
   'tanvirtin/monokai.nvim',
  	config = function()
 	require('monokai').setup { palette = require('monokai').pro }
  	end
  }


  -- require('codam-header')
  -- Codam header
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
  --
  -- Auto-install and update Treesitter
  if packer_bootstrap then
    require('packer').sync()
  end
end)

-- Enable Treesitter
require('nvim-treesitter.configs').setup({
  highlight = {
    enable = true, -- Enable syntax highlighting
  },
  ensure_installed = { "lua", "python", "javascript", "typescript", "html", "css", "json", "markdown", "c", "rust", "cpp" 
  }, -- List of languages to install

})


-- Import filetype settings
require('filetypes').setup()
require('options')

vim.cmd([[colorscheme monokai]])
-- require('plugin.codam-header').setup()
-- -- specify on c files that commentstring == '/*%s*/', default == '//%s'
