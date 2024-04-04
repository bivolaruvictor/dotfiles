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
  {
    "ThePrimeagen/harpoon",
  },
  {
    "sindrets/diffview.nvim",
  },
  {
    "tpope/vim-fugitive",
    cmd = { "Git", "Gedit", "Gsplit", "Gdiffsplit" }
  },
  {
    "SmiteshP/nvim-navic",
    setup = {
      lsp = {
        auto_attach = true,
      }
    },
  },
  {"jose-elias-alvarez/null-ls.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local null_ls = require("null-ls")

      null_ls.setup({
        sources = {
          null_ls.builtins.diagnostics.ruff,
          null_ls.builtins.formatting.black,
        }
      })
    end
  },
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    build = "cd app && yarn install",
    init = function()
      vim.g.mkdp_filetypes = { "markdown" }
    end,
    ft = { "markdown" },
  },
}
return plugins


