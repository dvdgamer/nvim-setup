  return {
  config = function()
    require('nvim-treesitter.configs').setup({
      highlight = { 
				enable = true , 
				additional_vim_regex_highlighting = { 'ruby' },
			},
      incremental_selection = { enable = true },
      indent = { enable = true , disable = { 'ruby' }},
      ensure_installed = {
        "c", "lua", "python", "javascript", "typescript",
        "html", "css", "json", "markdown", "rust", "cpp", "diff",
				"vim", "query", "bash"
      }
    })
  end
}
