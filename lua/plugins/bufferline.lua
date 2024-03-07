return {
  {
    'akinsho/bufferline.nvim',
    event = 'VeryLazy',
    dependencies = 'nvim-tree/nvim-web-devicons',
    keys = {},

    opts = {},
    config = function(_, opts)
      require('bufferline').setup(opts)
    end,
  },
}
