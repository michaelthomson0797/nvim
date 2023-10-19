return {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v3.x',
  dependencies = {
    -- LSP Support
    {'neovim/nvim-lspconfig'},             -- Required
    {'williamboman/mason.nvim'},           -- Optional
    {'williamboman/mason-lspconfig.nvim'}, -- Optional

    -- Autocompletion
    {'hrsh7th/nvim-cmp'},     -- Required
    {'hrsh7th/cmp-nvim-lsp'}, -- Required
    {'L3MON4D3/LuaSnip'},     -- Required
    {'onsails/lspkind.nvim'}   -- Optional
  },
  config = function()
    local lsp_zero = require('lsp-zero')

    --  This function gets run when an LSP connects to a particular buffer.
    ---@diagnostic disable-next-line: unused-local
    lsp_zero.on_attach(function(client, bufnr)
      local opts = {buffer = bufnr, remap = false}
      vim.keymap.set('n', '<leader>rn', '<Cmd>Lspsaga rename<CR>', opts)
      vim.keymap.set('n', '<leader>ca', '<cmd>Lspsaga code_action<CR>', opts)

      vim.keymap.set('n', 'gd', '<Cmd>Lspsaga finder def<CR>', opts)
      vim.keymap.set('n', 'gp', '<Cmd>Lspsaga peek_definition<CR>', opts)
      vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
      vim.keymap.set('n', 'gr', '<Cmd>Lspsaga finder ref<CR>', opts)
      vim.keymap.set('n', '<leader>o', '<Cmd>Lspsaga outline<CR>', opts)
      vim.keymap.set('n', '<leader>ds', require('telescope.builtin').lsp_document_symbols, opts)
      vim.keymap.set('n', '<leader>ws', require('telescope.builtin').lsp_dynamic_workspace_symbols, opts)

      vim.keymap.set("n", "[d", vim.diagnostic.goto_next, opts)
      vim.keymap.set("n", "]d", vim.diagnostic.goto_prev, opts)

      -- See `:help K` for why this keymap
      vim.keymap.set('n', 'K', '<Cmd>Lspsaga hover_doc<CR>', opts)
      vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
    end)

    -- Mason Config
    require('mason').setup({})
    require('mason-lspconfig').setup({
      ensure_installed = {},
      handlers = {
        lsp_zero.default_setup,
      }
    })

    -- cmp Config

    local cmp = require('cmp')
    local cmp_format = lsp_zero.cmp_format()

    cmp.setup({
      formatting = {
        fields = {'abbr', 'kind', 'menu'},
        format = require('lspkind').cmp_format({
          mode = 'symbol', -- show only symbol annotations
          maxwidth = 50, -- prevent the popup from showing more than provided characters
          ellipsis_char = '...', -- when popup menu exceed maxwidth, the truncated part would show ellipsis_char instead
        })
      },
      mapping = cmp.mapping.preset.insert({
        ['<CR>'] = cmp.mapping.confirm({select = false}),
        -- scroll up and down the documentation window
        ['<C-u>'] = cmp.mapping.scroll_docs(-4),
        ['<C-d>'] = cmp.mapping.scroll_docs(4),
      }),
    })


    vim.diagnostic.config({
        virtual_text = true,
    })
  end,
}
