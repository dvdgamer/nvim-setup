return {  
  config = function()  
    require('telescope').setup({  
      extensions = {  
        file_browser = {  
          theme = "ivy",
          -- disables netrw and use telescope-file-browser in its place
          hijack_netrw = true,  
          mappings = {  
            ["i"] = { 
              ["<Esc>"] = require('telescope.actions').close 
            },
            ["n"] = {  
              -- Normal mode mappings (can be left empty or add custom mappings)  
            },
          },  
        },  
      },  
    })  

    -- Load the extension inside the config function
    require("telescope").load_extension("file_browser")
  end
}
