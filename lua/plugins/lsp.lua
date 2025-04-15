return {
  config = function()
    local lsp = require('lspconfig')
    local cmp_lsp = require('cmp_nvim_lsp')
    
    -- Diagnostic Config
    -- See :help vim.diagnostic.Opts
    vim.diagnostic.config {
      severity_sort = true,
      float = { border = 'rounded', source = 'if_many' },
      underline = { severity = vim.diagnostic.severity.ERROR },
      signs = vim.g.have_nerd_font and {
        text = {
          [vim.diagnostic.severity.ERROR] = '󰅚 ',
          [vim.diagnostic.severity.WARN] = '󰀪 ',
          [vim.diagnostic.severity.INFO] = '󰋽 ',
          [vim.diagnostic.severity.HINT] = '󰌶 ',
        },
      } or {},
      virtual_text = {
        source = 'if_many',
        spacing = 2,
        format = function(diagnostic)
          local diagnostic_message = {
            [vim.diagnostic.severity.ERROR] = diagnostic.message,
            [vim.diagnostic.severity.WARN] = diagnostic.message,
            [vim.diagnostic.severity.INFO] = diagnostic.message,
            [vim.diagnostic.severity.HINT] = diagnostic.message,
          }
          return diagnostic_message[diagnostic.severity]
        end,
      },
    }
    
    -- Setup capabilities with autocompletion
    local capabilities = cmp_lsp.default_capabilities()
    
    -- Common on_attach function for all LSP servers
    local on_attach = function(client, bufnr)
      -- Add keymaps here
      -- For example:
      local opts = { noremap = true, silent = true, buffer = bufnr }
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
      vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
      vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
      vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
      vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
      vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, opts)
      vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
    end
    
    -- Example server setup
    lsp.pyright.setup({
      capabilities = capabilities,
      on_attach = on_attach
    })
    
    -- Add more LSP servers as needed
    -- lsp.clangd.setup({
    --   capabilities = capabilities,
    --   on_attach = on_attach
    -- })
    
    -- lsp.lua_ls.setup({
    --   capabilities = capabilities,
    --   on_attach = on_attach,
    --   settings = {
    --     Lua = {
    --       diagnostics = {
    --         globals = { 'vim' }
    --       }
    --     }
    --   }
    -- })
  end
}
