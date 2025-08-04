-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    'MunifTanjim/nui.nvim',
  },
  lazy = true,
  keys = {
    { '\\', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
  },
  opts = {
    filesystem = {
      filtered_items = {
        visible = true,
        hide_dotfiles = false,
        hide_gitignored = false,
      },
      window = {
        mappings = {
          ['\\'] = 'close_window',
        },
      },
    },
  },
  config = function(_, opts)
    require('neo-tree').setup(opts)
    vim.api.nvim_create_autocmd('FileType', {
      pattern = 'neo-tree',
      callback = function()
        vim.api.nvim_set_hl(0, 'NeoTreeNormal', { bg = 'none' })
        vim.api.nvim_set_hl(0, 'NeoTreeNormalNC', { bg = 'none' })
        vim.api.nvim_set_hl(0, 'NeoTreeFloatBorder', { bg = 'none' })
        vim.api.nvim_set_hl(0, 'NeoTreeWinSeparator', { bg = 'none' })
        vim.api.nvim_set_hl(0, 'NeoTreeSignColumn', { bg = 'none' })
      end,
    })
  end,
}
