local M = {}

-- In order to disable a default keymap, use
M.disabled = {
  n = {
      ["<leader>h"] = "",
      ["<leader>v"] = "",
      ["<leader>gt"] = ""
  }
}

M.harpoon = {
  n = {
    ["<leader>hm"] = { function ()
      require("harpoon.mark").add_file()
    end, "Add harpoon mark to file"
    },
    ["<leader>ha"] = { function ()
      require("harpoon.ui").toggle_quick_menu()
    end, "Show all harpoon marks"
    },
    ["<leader>ht"] = {"<cmd> Telescope harpoon marks <CR>", "Show all harpoon marks with Telescope"}
  },
}

M.Telescope = {
  n = {
    ["<C-n>"] = {"<cmd> Telescope <CR>", "Telescope"},
    ["<C-s>"] = {":Telescope Files <CR>", "Telescope Files"}
  },
}

M.Git = {
  n = {
    ["<leader>gs"] = {":Git status <CR>", "Git Status"},
    ["<leader>gl"] = {":Git l <CR>", "Git Pretty Log"},
    ["<leader>gb"] = {":Git b <CR>", "Git Branch"},
    ["<leader>gm"] = {":Git m <CR>", "Git Commit Amend"},
  }
}
-- Your custom mappings
M.custom={
  i = {
    ["jk"] = { "<ESC>", "escape insert mode" , opts = { nowait = true }},
    -- ...
  }
}

return M
