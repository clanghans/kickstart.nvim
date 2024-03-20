return {
  {
    -- dir = "~/ws/neogit",
    "NeogitOrg/neogit",
    dependencies = {
      "nvim-lua/plenary.nvim", -- required
      "sindrets/diffview.nvim", -- optional - Diff integration
      "nvim-telescope/telescope.nvim", -- optional
    },
    config = true,
    keys = {
      { "<leader>gg", "<cmd>Neogit<cr>", "Neogit" },
      { "<leader>gG", "<cmd>Neogit cwd=getcwd()<cr>", "Neogit" },
    },
  },
  {
    "emmanueltouzery/agitator.nvim",
    dependencies = { "telescope.nvim", "nvim-lua/plenary.nvim" },
    keys = {
      {
        "<leader>gt",
        function()
          require("agitator").git_time_machine()
        end,
        desc = "git time machine",
      },
      {
        "<leader>gb",
        function()
          require("agitator").git_blame()
        end,
        desc = "git blame",
      },
    },
  },
}
