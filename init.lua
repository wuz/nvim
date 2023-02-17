vim.g.mapleader = " " -- make sure to set `mapleader` before lazy so your mappings are correct

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
    path = "~/github/wuz",
  },
  spec = {
    -- add LazyVim and import its plugins
    { "wuz/cantrip.nvim", dev = true, import = "cantrip.plugins" },
    -- extra plugins
    { import = "cantrip.plugins.extras.notes" },
    -- Languange specifc plugins and configs
    { import = "cantrip.plugins.lsp.languages.markdown" },
    { import = "cantrip.plugins.lsp.languages.typescript" },
    -- import/override with your plugins
    -- { import = "plugins" },
  },
  defaults = {
    lazy = false,
    version = false, -- always use the latest git commit
  },
  install = { colorscheme = { "tokyonight" } },
  checker = { enabled = true }, -- automatically check for plugin updates
  performance = {
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
