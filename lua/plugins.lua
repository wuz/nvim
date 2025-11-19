return {
  { "pimalaya/himalaya-vim" },
  { "meznaric/key-analyzer.nvim", opts = {} },
  { "imsnif/kdl.vim", config = function() end },
  {
    "fresh2dev/zellij.vim",
    -- Pin version to avoid breaking changes.
    -- tag = '0.3.*',
    lazy = false,
    keys = {
      { "<C-h>", ":ZellijNavigateLeft<CR>" },
      { "<C-j>", ":ZellijNavigateDown<CR>" },
      { "<C-k>", ":ZellijNavigateUp<CR>" },
      { "<C-l>", ":ZellijNavigateRight<CR>" },
    },
    init = function()
      -- Options:
      -- vim.g.zelli_navigator_move_focus_or_tab = 1
      -- vim.g.zellij_navigator_no_default_mappings = 1
    end,
  },
}
--[[
return {
  {
    "jakewvincent/mkdnflow.nvim",
    config = function()
      require("mkdnflow").setup()
    end,
  },
  {
    "SmiteshP/nvim-navic",
    dependencies = { "neovim/nvim-lspconfig" },
  },
  {
    "anuvyklack/hydra.nvim",
  },
  {
    "jbyuki/venn.nvim",
    dependencies = { "anuvyklack/hydra.nvim" },
    config = function()
      local Hydra = require("hydra")
      local hint = [[
 Arrow^^^^^^   Select region with <C-v>
 ^ ^ _K_ ^ ^   _f_: surround it with box
 _H_ ^ ^ _L_
 ^ ^ _J_ ^ ^                      _<Esc>_
--]]
-- Hydra({
--  name = "Draw Diagram",
--  hint = hint,
--  config = {
--   color = "pink",
--   invoke_on_body = true,
--   hint = {
--     border = "rounded",
--   },
--   on_enter = function()
--    vim.o.virtualedit = "all"
--   end,
--  },
-- mode = "n",
-- body = "<leader>D",
-- heads = {
--   { "H",     "<C-v>h:VBox<CR>" },
--   { "J",     "<C-v>j:VBox<CR>" },
--   { "K",     "<C-v>k:VBox<CR>" },
--   { "L",     "<C-v>l:VBox<CR>" },
--    { "f",     ":VBox<CR>",      { mode = "v" } },
--     { "<Esc>", nil,              { exit = true } },
--    },
--   })
--  end,
-- },

--}
--]]
