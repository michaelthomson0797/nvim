return {
  'nvimdev/lspsaga.nvim',
  config = function()
    require('lspsaga').setup({
      symbols_in_winbar = {
        enable = true
      },
      finder = {
        keys = {
          toggle_or_open = '<Tab>'
        },
      },
      outline = {
        layout = 'float',
        keys = {
          toggle_or_jump = '<Tab>'
        },
      },
    })
  end,
  dependencies = {
    'nvim-treesitter/nvim-treesitter',
    'nvim-tree/nvim-web-devicons',
  }
}
