return {
  "epwalsh/obsidian.nvim",
  version = "*", -- use latest release instead of latest commit
  lazy = false,
  ft = "markdown",
  dependencies = {
    -- Required.
    "nvim-lua/plenary.nvim",
  },
  opts = {
    workspaces = {
      {
        name = "personal",
        path = "~/vaults/personal",
      },
      {
        name = "work",
        path = "~/vaults/work",
      },
    },
  },
  mappings = {
    -- Overrides the 'gf' mapping to work on markdown/wiki links within your vault.
    ["gf"] = {
      action = function()
        return require("obsidian").util.gf_passthrough()
      end,
      opts = { noremap = false, expr = true, buffer = true },
    },
    -- Toggle check-boxes.
    ["<leader>ch"] = {
      action = function()
        return require("obsidian").util.toggle_checkbox()
      end,
      opts = { buffer = true },
    },
  },
  keys = {
    { "<leader>no", "<cmd>ObsidianOpen<cr>", desc = "Obsidian Open" },
    { "<leader>nn", "<cmd>ObsidianNew<cr>", desc = "Obsidian New" },
    { "<leader>nd", "<cmd>ObsidianToday<cr>", desc = "Obsidian Today" },
    { "<leader>nt", "<cmd>ObsidianToday<cr>", desc = "Obsidian Today" },

    -- ["<leader>nf"] = { action = "<cmd>ObsidianFind<cr>",
    -- ["<leader>nl"] = { action = "<cmd>ObsidianLast<cr>", opts = { desc = "Obsidian Last" } },
    -- ["<leader>nr"] = { action = "<cmd>ObsidianRecent<cr>", opts = { desc = "Obsidian Recent" } },
    -- ["<leader>ns"] = { action = "<cmd>ObsidianSearch<cr>", opts = { desc = "Obsidian Search" } },
    -- ["<leader>nc"] = { action = "<cmd>ObsidianClose<cr>", opts = { desc = "Obsidian Close" } },
    -- ["<leader>nd"] = { action = "<cmd>ObsidianDelete<cr>", opts = { desc = "Obsidian Delete" } },
    -- ["<leader>nm"] = { action = "<cmd>ObsidianMove<cr>", opts = { desc = "Obsidian Move" } },
    -- ["<leader>np"] = { action = "<cmd>ObsidianPreview<cr>", opts = { desc = "Obsidian Preview" } },
    -- ["<leader>ni"] = { action = "<cmd>ObsidianInsert<cr>", opts = { desc = "Obsidian Insert" } },
    -- ["<leader>ne"] = { action = "<cmd>ObsidianEdit<cr>", opts = { opts = { desc = "Obsidian Edit" } } },
    -- ["<leader>na"] = { action = "<cmd>ObsidianAttach<cr>", opts = { desc = "Obsidian Attach" } },
    -- ["<leader>nb"] = { action = "<cmd>ObsidianBacklinks<cr>", opts = { desc = "Obsidian Backlinks" } },
    -- ["<leader>ng"] = { action = "<cmd>ObsidianGraph<cr>", opts = { desc = "Obsidian Graph" } },
    -- ["<leader>nt"] = { action = "<cmd>ObsidianToday<cr>", opts = { desc = "Obsidian Today" } },
  },
}
