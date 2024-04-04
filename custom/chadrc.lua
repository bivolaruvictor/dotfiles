---@type ChadrcConfig
local M = {}
M.plugins = "custom.plugins"
M.ui = {
  theme = "catppuccin",
  theme_toggle = { "catppuccin", "blossom_light" },
-- ...
}

M.mappings = require "custom.mappings"
return M
