return {
  { -- Fuzzy Finder (files, lsp, etc)
    'nvim-telescope/telescope.nvim',
    event = 'VeryLazy',
    branch = '0.1.x',
    dependencies = {
      'nvim-lua/plenary.nvim',
      { -- If encountering errors, see telescope-fzf-native README for install instructions
        'nvim-telescope/telescope-fzf-native.nvim',

        -- `build` is used to run some command when the plugin is installed/updated.
        -- This is only run then, not every time Neovim starts up.
        build = 'make',

        -- `cond` is a condition used to determine whether this plugin should be
        -- installed and loaded.
        cond = function()
          return vim.fn.executable 'make' == 1
        end,
      },
      { 'nvim-telescope/telescope-ui-select.nvim' },

      -- Useful for getting pretty icons, but requires special font.
      --  If you already have a Nerd Font, or terminal set up with fallback fonts
      --  you can enable this
      -- { 'nvim-tree/nvim-web-devicons' }
    },
    config = function()
      -- Telescope is a fuzzy finder that comes with a lot of different things that
      -- it can fuzzy find! It's more than just a "file finder", it can search
      -- many different aspects of Neovim, your workspace, LSP, and more!
      --
      -- The easiest way to use telescope, is to start by doing something like:
      --  :Telescope help_tags
      --
      -- After running this command, a window will open up and you're able to
      -- type in the prompt window. You'll see a list of help_tags options and
      -- a corresponding preview of the help.
      --
      -- Two important keymaps to use while in telescope are:
      --  - Insert mode: <c-/>
      --  - Normal mode: ?
      --
      -- This opens a window that shows you all of the keymaps for the current
      -- telescope picker. This is really useful to discover what Telescope can
      -- do as well as how to actually do it!

      -- [[ Configure Telescope ]]
      -- See `:help telescope` and `:help telescope.setup()`
      require('telescope').setup {
        -- You can put your default mappings / updates / etc. in here
        --  All the info you're looking for is in `:help telescope.setup()`
        --
        defaults = {
          -- ivy mode
          layout_strategy = 'bottom_pane',
          sorting_strategy = 'ascending',

          layout_config = {
            height = 0.6,
          },

          border = true,
          borderchars = {
            prompt = { '─', ' ', ' ', ' ', '─', '─', ' ', ' ' },
            results = { ' ' },
            preview = { '─', '│', '─', '│', '╭', '╮', '╯', '╰' },
          },
        },
        -- pickers = {}
        extensions = {
          ['ui-select'] = {
            require('telescope.themes').get_dropdown(),
          },
        },
      }

      -- Enable telescope extensions, if they are installed
      pcall(require('telescope').load_extension, 'fzf')
      pcall(require('telescope').load_extension, 'ui-select')

      -- See `:help telescope.builtin`
      local builtin = require 'telescope.builtin'
      local set = vim.keymap.set

      -- Files
      set('n', '<leader>fg', builtin.git_files, { desc = '[F]iles git find' })
      set('n', '<leader>ff', builtin.find_files, { desc = '[F]iles find' })
      set('n', '<leader>fr', builtin.oldfiles, { desc = '[F]iles Recent Files' })

      set('n', '<leader>fF', function()
        builtin.find_files { hidden = false, no_ignore = true }
      end, { desc = '[F]iles find no-ignore' })

      set('n', '<leader>fp', function()
        builtin.find_files { cwd = vim.fn.stdpath 'config' }
      end, { desc = '[F]ind files in config project' })

      -- Help
      set('n', '<leader>hh', builtin.help_tags, { desc = '[H]elp [H]elp' })
      set('n', '<leader>hk', builtin.keymaps, { desc = '[H]elp [K]eymaps' })

      -- set('n', '<leader>ss', builtin.builtin, { desc = '[S]earch [S]elect Telescope' })
      -- set('n', '<leader>sw', builtin.grep_string, { desc = '[S]earch current [W]ord' })
      -- set('n', '<leader>sg', builtin.live_grep, { desc = '[S]earch by [G]rep' })
      -- set('n', '<leader>sd', builtin.diagnostics, { desc = '[S]earch [D]iagnostics' })
      -- set('n', '<leader>sr', builtin.resume, { desc = '[S]earch [R]esume' })
      -- set('n', '<leader>s.', builtin.oldfiles, { desc = '[S]earch Recent Files ("." for repeat)' })
      -- set('n', '<leader><leader>', builtin.buffers, { desc = '[ ] Find existing buffers' })

      -- Slightly advanced example of overriding default behavior and theme
      --   set('n', '<leader>/', function()
      --     -- You can pass additional configuration to telescope to change theme, layout, etc.
      --     builtin.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
      --       winblend = 10,
      --       previewer = false,
      --     })
      --   end, { desc = '[/] Fuzzily search in current buffer' })
      --
      --   -- Also possible to pass additional configuration options.
      --   --  See `:help telescope.builtin.live_grep()` for information about particular keys
      --   set('n', '<leader>s/', function()
      --     builtin.live_grep {
      --       grep_open_files = true,
      --       prompt_title = 'Live Grep in Open Files',
      --     }
      --   end, { desc = '[S]earch [/] in Open Files' })
    end,
  },
}
