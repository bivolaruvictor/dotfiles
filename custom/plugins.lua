local overrides = require "custom.configs.overrides"
local plugins = {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "python"
      },
    },
  },
  { "williamboman/mason.nvim", opts = overrides.mason },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
}
return plugins


