return {
  {
    "nvim-neorg/neorg",
    build = ":Neorg sync-parsers",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("neorg").setup {
        load = {
          ["core.defaults"] = {}, -- Loads default behaviour
          ["core.concealer"] = {}, -- Adds pretty icons to your documents
          ["core.dirman"] = { -- Manages Neorg workspaces
            config = {
              workspaces = {
                notes = "~/neorg",
              },
              default_workspace = "notes"
            },
          },
          ["core.keybinds"] = {
            config = {
              default_keybinds = true,
              hook = function(keybinds)
                keybinds.remap_event("norg", "n", "<leader>c", "core.looking-glass.magnify-code-block")
                keybinds.remap_event("norg", "n", "<leader>tt", "core.qol.todo_items.todo.task_cycle")
              end,
            }
          },
          ["core.completion"] = {
            config = {
              engine = "nvim-cmp",
              name = "neorg"
            }
          },
          ["core.integrations.nvim-cmp"] = {},
          ["core.looking-glass"] = {},
          ["core.summary"] = {},
        },
      }
    end,
  }
}

