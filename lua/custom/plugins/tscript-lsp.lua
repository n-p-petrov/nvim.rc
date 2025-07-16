return {
  'neovim/nvim-lspconfig',
  dependencies = {
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
  },
  config = function()
    require('mason').setup()
    require('mason-lspconfig').setup {
      ensure_installed = { 'ts_ls' },
    }

    local lspconfig = require 'lspconfig'
    lspconfig.ts_ls.setup {}
  end,
}
