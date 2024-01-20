return {
  {
    'nvim-telescope/telescope-ui-select.nvim'
  },
  {
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
    config = function()
      require("telescope").setup {
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown {
            }
          }
        }
      }
      -- require('telescope').load_extension('fzf')
      require("telescope").load_extension("ui-select")
    end
  }
}
