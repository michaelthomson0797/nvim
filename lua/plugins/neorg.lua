return {
  "nvim-neorg/neorg",
  build = ":Neorg sync-parsers",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    require("neorg").setup {
      load = {
        ["core.defaults"] = {},
        ["core.concealer"] = {},
        ["core.dirman"] = {
          config = {
            workspaces = {
              notes = "~/pi/notes",
            },
            default_workspace = "notes",
          },
        },
        ["core.export"] = {},
        ["core.export.markdown"] = {},
        ["core.ui"] = {},
        ["core.ui.calendar"] = {},
        ["core.completion"] = {
          config = {
            engine = "nvim-cmp",
            name = "neorg"
          }
        },
      },
    }

    vim.wo.foldlevel = 99
    vim.wo.conceallevel = 2
  end,
}
