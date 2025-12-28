return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
    },

    config = function()
      require("mason").setup()
      require("mason-lspconfig").setup({
        ensure_installed = { "basedpyright" },
      })

      -- LSP Keymaps
      vim.api.nvim_create_autocmd("LspAttach", {
        group = vim.api.nvim_create_augroup("lsp-attach", { clear = true }),
        callback = function(event)
          local opts = { buffer = event.buf, silent = true }
          local builtin = require("telescope.builtin")

          vim.keymap.set("n", "gd", builtin.lsp_definitions, opts)
          vim.keymap.set("n", "gr", builtin.lsp_references, opts)
          vim.keymap.set("n", "gI", builtin.lsp_implementations, opts)
          vim.keymap.set("n", "<leader>D", builtin.lsp_type_definitions, opts)
          vim.keymap.set("n", "<leader>ds", builtin.lsp_document_symbols, opts)
          vim.keymap.set("n", "<leader>ws", builtin.lsp_dynamic_workspace_symbols, opts)
          vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
          vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
        end,
      })

      vim.lsp.config('basedpyright', {
        settings = {
          basedpyright = {
            analysis = {
              typeCheckingMode = 'strict',  -- 'off', 'basic', 'standard', 'strict'
              diagnosticMode = 'openFilesOnly',  -- or 'workspace'
            }
          }
        }
      })
      vim.lsp.enable('basedpyright')

    end,
  },
}

