return {
  "nvim-neotest/neotest",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "antoinemadec/FixCursorHold.nvim",
    "nvim-treesitter/nvim-treesitter",
    "marilari88/neotest-vitest",
  },
  config = function()
    require("neotest").setup({
      adapters = {
        require("neotest-vitest")
      }
    })

    local neotest = require("neotest")

    vim.keymap.set("n", "<leader>tt", neotest.run.run, {})
    vim.keymap.set("n", "<leader>td", function() neotest.run.run({strategy = "dap"}) end, {})
    vim.keymap.set("n", "<leader>tf", function() neotest.run.run(vim.fn.expand("%")) end, {})
    vim.keymap.set("n", "<leader>to", neotest.output.open, {})
    vim.keymap.set("n", "<leader>ts", neotest.summary.toggle, {})
    vim.keymap.set("n", "<leader>tw", neotest.watch.toggle, {})
  end
}
