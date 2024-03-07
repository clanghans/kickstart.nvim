return {
  {
    'emmanueltouzery/agitator.nvim',
    dependencies = { 'telescope.nvim', 'nvim-lua/plenary.nvim' },
    keys = {
      {
        '<leader>gt',
        function()
          require('agitator').git_time_machine()
        end,
        desc = 'git time machine',
      },
      {
        '<leader>gb',
        function()
          require('agitator').git_blame()
        end,
        desc = 'git blame',
      },
    },
  },
}
