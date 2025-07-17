return {
  'MeanderingProgrammer/render-markdown.nvim',
  dependencies = {
    'nvim-treesitter/nvim-treesitter',
    'nvim-tree/nvim-web-devicons',
  },
  opts = {},
  config = function(_, opts)
    require('render-markdown').setup(opts)
  end,
  ft = { 'markdown' },
}
