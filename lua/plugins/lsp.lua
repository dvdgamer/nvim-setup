return {
  config = function()
    local lsp = require('lspconfig')
    local cmp_lsp = require('cmp_nvim_lsp')
    
    -- Setup capabilities with autocompletion
    local capabilities = cmp_lsp.default_capabilities()
    
    -- Example server setup
    lsp.pyright.setup({
      capabilities = capabilities,
      on_attach = function(client, bufnr)
        -- Add keymaps here
      end
    })
  end
}
