return {
  {
    'MeanderingProgrammer/render-markdown.nvim',
    ft = { 'markdown' },
    dependencies = {
      'nvim-treesitter/nvim-treesitter',
      'nvim-tree/nvim-web-devicons',
    },
    opts = {},
    config = function(_, opts)
      require('render-markdown').setup(opts)
    end,
  },
  {
    'hedyhli/markdown-toc.nvim',
    ft = { 'markdown' },
    config = function()
      require('mtoc').setup {
        auto_update = true,
      }

      vim.keymap.set('n', '<leader>mI', ':Mtoc i<CR>', { desc = '[M]arkdown TOC [I]nsert' })
      vim.keymap.set('n', '<leader>mU', ':Mtoc u<CR>', { desc = '[M]arkdown TOC [U]pdate' })
    end,
  },
}
