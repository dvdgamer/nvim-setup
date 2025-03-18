return {
  config = function()
    require('telescope').setup({
      defaults = {
        mappings = {
          i = { ["<Esc>"] = require('telescope.actions').close }
        }
      }
    })
  end
}
