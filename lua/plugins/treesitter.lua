return {
  'nvim-treesitter/nvim-treesitter',
  config = function()
    require('nvim-treesitter.configs').setup({
      -- A list of parser names, or "all"
      ensure_installed = "all",
      ignore_install = { "phpdoc" },

      -- Install parsers synchronously (only applied to `ensure_installed`)
      sync_install = false,

      -- Automatically install missing parsers when entering buffer
      auto_install = true,

      -- indent module
      indent = { enable = true },

      -- highlight module
      highlight = { enable = true },

      -- auto close tags in html/jsx/tsx
      autotag = { enable = true },
    })
  end
}

