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
