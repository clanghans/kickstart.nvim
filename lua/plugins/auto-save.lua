return {
  {
    'okuuva/auto-save.nvim',
    cmd = 'ASToggle', -- optional for lazy loading on command
    keys = {
      { '<leader>us', ':ASToggle<CR>', desc = 'Toggle auto-save' },
    },
    event = { 'InsertLeave', 'TextChanged' }, -- optional for lazy loading on trigger events
    opts = {},
  },
}
