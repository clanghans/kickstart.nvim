return {
  { -- Fuzzy Finder (files, lsp, etc)
    "nvim-telescope/telescope.nvim",
    keys = {},
    opts = {
      defaults = {
        layout_strategy = "bottom_pane",
        layout_config = {
          prompt_position = "top",
          height = 0.6,
        },
      },
    },
    --
    -- -- Enable telescope extensions, if they are installed
    -- pcall(require("telescope").load_extension, "fzf")
    -- pcall(require("telescope").load_extension, "ui-select")
    --
    -- -- See `:help telescope.builtin`
    -- local builtin = require("telescope.builtin")
    -- local set = vim.keymap.set
    --
    -- -- Files
    -- set("n", "<leader>fg", builtin.git_files, { desc = "[F]iles git find" })
    -- set("n", "<leader>ff", builtin.find_files, { desc = "[F]iles find" })
    -- set("n", "<leader>fr", builtin.oldfiles, { desc = "[F]iles Recent Files" })
    --
    -- set("n", "<leader>fF", function()
    --   builtin.find_files({ hidden = false, no_ignore = true })
    -- end, { desc = "[F]iles find no-ignore" })
    --
    -- set("n", "<leader>fp", function()
    --   builtin.find_files({ cwd = vim.fn.stdpath("config") })
    -- end, { desc = "[F]ind files in config project" })
    --
    -- -- Search
    -- set("n", "<leader>/", function()
    --   builtin.grep_string({ shorten_path = true, word_match = "-w", only_sort_text = true, search = "" })
    -- end, { desc = "Search in files" })
    -- set("n", "<leader>'", builtin.resume, { desc = "resume last search" })
    --
    -- set("n", "<leader>ss", builtin.current_buffer_fuzzy_find, { desc = "[S]earch [S]elect" })
    --
    -- -- Help
    -- set("n", "<leader>hh", builtin.help_tags, { desc = "[H]elp [H]elp" })
    -- set("n", "<leader>hk", builtin.keymaps, { desc = "[H]elp [K]eymaps" })
    --
    -- -- Buffers
    -- set("n", "<leader>bb", builtin.buffers, { desc = "Find existing buffers" })
    --
    -- set('n', '<leader>ss', builtin.builtin, { desc =s'[S]earch [S]elect Telescope' })
    -- set('n', '<leader>sw', builtin.grep_string, { desc = '[S]earch current [W]ord' })
    -- set('n', '<leader>sg', builtin.live_grep, { desc = '[S]earch by [G]rep' })
    -- set('n', '<leader>sd', builtin.diagnostics, { desc = '[S]earch [D]iagnostics' })
    -- set('n', '<leader>s.', builtin.oldfiles, { desc = '[S]earch Recent Files ("." for repeat)' })

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
  },
}
