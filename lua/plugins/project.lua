return {
  {
    -- project management
    'ahmedkhalf/project.nvim',
    opts = {
      manual_mode = false,
      -- All the patterns used to detect root dir, when **"pattern"** is in
      -- detection_methods
      patterns = { '.git' },
      -- Don't calculate root dir on specific directories
      -- Ex: { "~/.cargo/*", ... }
      exclude_dirs = { '~/.conan/*', '/tmp/*' },
    },
    event = 'VeryLazy',
    depends = { 'nvim-neo-tree/neo-tree.nvim', 'nvim-telescope/telescope.nvim' },
    config = function()
      require('neo-tree').setup {
        sync_root_with_cwd = true,
        respect_buf_cwd = true,
        update_focused_file = {
          enable = true,
          update_root = true,
        },
      }
      require('telescope').load_extension 'projects'
    end,
    keys = {
      { '<leader>pp', '<Cmd>Telescope projects<CR>', desc = 'Projects' },
    },
  },
}
