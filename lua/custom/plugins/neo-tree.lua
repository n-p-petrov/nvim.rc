return {
  'nvim-neo-tree/neo-tree.nvim',
  branch = 'v3.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    'MunifTanjim/nui.nvim',
  },
  keys = {
    { '<leader>e', ':Neotree toggle<CR>', desc = 'NeoTree toggle', silent = true },
  },
  config = function()
    vim.g.neo_tree_remove_legacy_commands = 1
    require('neo-tree').setup {
      window = {
        position = 'left',
        width = 30,
      },
      filesystem = {
        hijack_netrw_behavior = 'open_current',
      },
    }
  end,
}
