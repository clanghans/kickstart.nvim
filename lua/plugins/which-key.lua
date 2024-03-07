return {
  { -- Useful plugin to show you pending keybinds.
    'folke/which-key.nvim',
    event = 'VeryLazy', -- Sets the loading event to 'VeryLazy'
    config = function() -- This is the function that runs, AFTER loading
      require('which-key').setup {}

      -- Document existing key chains
      require('which-key').register {
        -- ['<leader>c'] = { name = '[C]ode', _ = 'which_key_ignore' },
        -- ['<leader>d'] = { name = '[D]ocument', _ = 'which_key_ignore' },
        -- ['<leader>r'] = { name = '[R]ename', _ = 'which_key_ignore' },
        ['<leader>s'] = { name = '[S]earch', _ = 'which_key_ignore' },
        ['<leader>w'] = { name = '[W]indow', _ = 'which_key_ignore' },
        ['<leader>f'] = { name = '[F]iles', _ = 'which_key_ignore' },
        ['<leader>h'] = { name = '[H]elp', _ = 'which_key_ignore' },
        ['<leader>n'] = { name = '[N]otes', _ = 'which_key_ignore' },
        ['<leader>b'] = { name = '[B]buffer', _ = 'which_key_ignore' },
      }
    end,
  },
}
