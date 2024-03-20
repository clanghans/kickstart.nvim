return {
  -- configure LSP
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        -- pyright will be automatically installed with mason and loaded with lspconfig
        pyright = {},
        
        ruff_lsp = {
          on_attach = function(client, bufnr)
            -- Disable hover in favor of Pyright
            client.server_capabilities.hoverProvider = false
            -- Organize imports via code action on save
            vim.api.nvim_create_autocmd("BufWritePre", {
              callback = function()
                vim.lsp.buf.code_action({ context = { only = { "source.organizeImports" } }, apply = true })
              end,
              buffer = bufnr,
            })
          end,
        },
      },
    },
  },

  -- add more treesitter parsers
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = "all",
    },
  },
  {
    -- disable context because it's fucking with tmux
    "nvim-treesitter/nvim-treesitter-context",
    enabled = false,
  },
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      local ensure_installed = {
        -- python
        "ruff-lsp", -- lsp
        "ruff", -- linter (but used as formatter)
        "pyright", -- lsp
        "black", -- formatter
        "mypy", -- linter

        -- lua
        "lua-language-server", -- lsp
        "stylua", -- formatter

        -- shell
        "bash-language-server", -- lsp
        "shfmt", -- formatter
        "shellcheck", -- linter

        -- yaml
        "yamllint", -- linter

        -- rust
        "rust-analyzer", -- lsp
      }
      -- extend opts.ensure_installed
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, ensure_installed)

      -- remove from opts.ensure_installed
      local ensure_not_installed = {}
      opts.ensure_installed = vim.tbl_filter(function(tool)
        return not vim.tbl_contains(ensure_not_installed, tool)
      end, opts.ensure_installed)
    end,
  },
}
