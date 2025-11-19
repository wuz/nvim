vim.g.mapleader = " " -- make sure to set `mapleader` before lazy so your mappings are correct
vim.g.maplocalleader = " "

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  -- bootstrap lazy.nvim
  -- stylua: ignore
  vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable",
    lazypath })
end
vim.opt.rtp:prepend(vim.env.LAZY or lazypath)

require("lazy").setup({
  dev = {
    path = "~/dev/github/wuz",
    patterns = { "wuz", "cantrip.nvim" },
    fallback = false,
  },
  spec = {
    {
      "wuz/cantrip.nvim",
      dev = true,
      import = "cantrip.plugins",
      opts = {
        translucent = false,
        theme = "lackluster-mint",
      },
    },
    -- {
    --   "wuz/warlock.nvim",
    --   dev = true,
    -- },
    { import = "cantrip.plugins.extras.colors.lackluster" },
    { import = "cantrip.plugins.completion.blink" },
    -- Language specific plugins and configs
    { import = "cantrip.plugins.lsp.languages.lua" },
    { import = "cantrip.plugins.lsp.languages.javascript" },
    { import = "cantrip.plugins.lsp.languages.grit" },
    { import = "cantrip.plugins.lsp.languages.rust" },
    { import = "cantrip.plugins.lsp.languages.markdown" },
    { import = "cantrip.plugins.lsp.languages.nix" },
    { import = "cantrip.plugins.lsp.languages.python" },
    { import = "cantrip.plugins.lsp.languages.css" },
    { import = "cantrip.plugins.lsp.languages.yaml" },
    -- extra plugins
    { import = "cantrip.plugins.extras.oil" },
    { import = "cantrip.plugins.extras.miniharp" },
    { import = "cantrip.plugins.extras.sessions" },
    { import = "cantrip.plugins.extras.tailwind" },
    { import = "cantrip.plugins.extras.nvim_highlight_colors" },
    { import = "cantrip.plugins.extras.git" },
    { import = "cantrip.plugins.extras.test" },
    { import = "cantrip.plugins.inclines.harpoon" },
    -- import/override with your plugins
    { import = "plugins" },
  },
  defaults = {
    lazy = false,
    version = false, -- always use the latest git commit
  },
  install = { colorscheme = { "warlock" } },
  checker = { enabled = false }, -- automatically check for plugin updates
  performance = {
    cache = { enabled = true },
    rtp = {
      -- disable some rtp plugins
      disabled_plugins = {
        "gzip",
        -- "matchit",
        -- "matchparen",
        -- "netrwPlugin",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
      },
    },
  },
})
