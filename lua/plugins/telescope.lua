return {
  'nvim-telescope/telescope.nvim',
  dependencies = {'nvim-lua/plenary.nvim'},
  lazy = false,
  keys = {
    { "<leader>ff", "<cmd>Telescope find_files<cr>" },
    { "<leader>fb", "<cmd>Telescope buffers<cr>" },
    { "<leader>fo", "<cmd>Telescope oldfiles<cr>" },
    { "<leader>fg", "<cmd>Telescope live_grep<cr>" },
    { "<leader>fc", "<cmd>Telescope commands<cr>" }
  },
  opts = function()
    require('telescope').setup()
    pcall(require('telescope').load_extension, 'fzf')
  end
}
