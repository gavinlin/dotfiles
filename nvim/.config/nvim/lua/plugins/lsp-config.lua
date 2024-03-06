return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls" },
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({
        capabilities = capabilities,
      })
      vim.api.nvim_create_autocmd('LspAttach', {
        group = vim.api.nvim_create_augroup('UserLspConfig', {}),
        callback = function()
          local wk = require("which-key")
          wk.register({
            g = {
              name = "Lsp",
              D = { vim.lsp.buf.declaration, "Declaration" },
              d = { vim.lsp.buf.definition, "Definition" },
              k = { vim.lsp.buf.hover, "Hover" },
              f = { function()
                vim.lsp.buf.format { async = true }
              end, "Format" },
              a = { vim.lsp.buf.code_action, "Action" },
            }
          }, { prefix = "<leader>" })
        end
      })
    end
  },
}
