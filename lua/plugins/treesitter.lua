  return {
  config = function()
    require('nvim-treesitter.configs').setup({
      highlight = { enable = true },
      incremental_selection = { enable = true },
      indent = { enable = true },
      ensure_installed = {
        "c", "lua", "python", "javascript", "typescript",
        "html", "css", "json", "markdown", "rust", "cpp"
      }
    })
  end
}
