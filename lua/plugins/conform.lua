return {
  {
    'stevearc/conform.nvim',
    event = { 'BufWritePre' },
    cmd = { 'ConformInfo' },
    keys = {
      {
        -- Customize or remove this keymap to your liking
        '<leader>cf',
        function()
          require('conform').format { async = true, lsp_fallback = true }
        end,
        desc = '[F]ormat buffer',
      },
    },
    -- Everything in opts will be passed to setup()
    opts = {
      formatters_by_ft = {
        lua = { 'stylua' },
        python = { 'ruff_format', 'isort', 'black' },
        sh = { 'shfmt' },
        javascript = { 'prettier' },
        typescript = { 'prettier' },
        javascriptreact = { 'prettier' },
        typescriptreact = { 'prettier' },
        svelte = { 'prettier' },
        css = { 'prettier' },
        html = { 'prettier' },
        json = { 'prettier' },
        yaml = { 'prettier' },
        markdown = { 'prettier' },
        graphql = { 'prettier' },
      },
      format_on_save = function()
        if vim.g.autoformat then
          return { timeout_ms = 500, lsp_fallback = true }
        end
        return {}
      end,
    },
  },
}
