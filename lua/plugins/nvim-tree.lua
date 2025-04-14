require("nvim-tree").setup({  
  sort = {  
    sorter = "case_sensitive",
		folders_first = true,
		files_first = false,
  },  
  view = {  
    width = 30,  
  },  
  renderer = {  
    group_empty = true,  
  },  
  filters = {  
    dotfiles = true,  
  },
	indent_markers = {
    enable = true,
    inline_arrows = true,
    icons = {
      corner = "└",
      edge = "│",
      item = "│",
      bottom = "─",
      none = " ",
    },
  },
	icons = {
    web_devicons = {
      file = {
        enable = true,
        color = true,
      },
      folder = {
        enable = false,
        color = true,
      },
    },
    git_placement = "before",
    modified_placement = "after",
    hidden_placement = "after",
    diagnostics_placement = "signcolumn",
    bookmarks_placement = "signcolumn",
    padding = " ",
    symlink_arrow = " ➛ ",
    show = {
      file = true,
      folder = true,
      folder_arrow = true,
      git = true,
      modified = true,
      hidden = false,
      diagnostics = true,
      bookmarks = true,
    },
})  
