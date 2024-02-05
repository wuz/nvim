return {
  {
    "jakewvincent/mkdnflow.nvim",
    rocks = "luautf8",
    config = function()
      require("mkdnflow").setup()
    end,
  },
  {
    "SmiteshP/nvim-navic",
    requires = "neovim/nvim-lspconfig",
  },
  {
    "anuvyklack/hydra.nvim",
    config = function() end,
  },
  {
    "nvim-neotest/neotest",
    dependencies = {
      "marilari88/neotest-vitest",
    },
    config = function()
      require("neotest").setup({
        adapters = {
          require("neotest-vitest"),
        },
      })
    end,
  },
  {
    "jbyuki/venn.nvim",
    requires = "anuvyklack/hydra.nvim",
    config = function()
      local Hydra = require("hydra")
      local hint = [[
 Arrow^^^^^^   Select region with <C-v> 
 ^ ^ _K_ ^ ^   _f_: surround it with box
 _H_ ^ ^ _L_
 ^ ^ _J_ ^ ^                      _<Esc>_
]]

      Hydra({
        name = "Draw Diagram",
        hint = hint,
        config = {
          color = "pink",
          invoke_on_body = true,
          hint = {
            border = "rounded",
          },
          on_enter = function()
            vim.o.virtualedit = "all"
          end,
        },
        mode = "n",
        body = "<leader>d",
        heads = {
          { "H", "<C-v>h:VBox<CR>" },
          { "J", "<C-v>j:VBox<CR>" },
          { "K", "<C-v>k:VBox<CR>" },
          { "L", "<C-v>l:VBox<CR>" },
          { "f", ":VBox<CR>", { mode = "v" } },
          { "<Esc>", nil, { exit = true } },
        },
      })
    end,
  },
}
