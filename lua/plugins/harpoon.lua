return {
  'theprimeagen/harpoon',
  keys = {
    { "<leader>a", function() require('harpoon.mark').add_file() end },
    { "<leader>e", function() require('harpoon.ui').toggle_quick_menu() end },
    { "<leader>k", function() require('harpoon.ui').nav_next() end },
    { "<leader>j", function() require('harpoon.ui').nav_prev() end },
  }
}
