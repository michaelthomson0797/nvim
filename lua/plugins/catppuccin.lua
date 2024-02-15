return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  opts = {
    integrations = {
      cmp = true,
      gitsigns = true,
      treesitter = true,
      fidget = true,
      harpoon = true,
      leap = true,
      mason = true,
      telescope = {
        enabled = true,
      },
    },
  },
}
