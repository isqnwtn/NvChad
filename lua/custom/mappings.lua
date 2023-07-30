---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },

    -- move around in windows
    ["<leader>wh"] = { "<C-w>h", "Window left" },
    ["<leader>wl"] = { "<C-w>l", "Window right" },
    ["<leader>wj"] = { "<C-w>j", "Window down" },
    ["<leader>wk"] = { "<C-w>k", "Window up" },
    ["<leader>w="] = { "<cmd> vertical resize +5 <CR>", "Window right" },
    ["<leader>w-"] = { "<cmd> vertical resize -5 <CR>", "Window right" },

    -- open link under curson in browser
    ["gx"] = {"<cmd> :execute '!open ' . shellescape(expand('<cfile>'), 1)<CR>"}
  },
}

M.tabufline = {
  plugin = true,
  n = {
    -- cycle through buffers
    ["<leader>tab"] = {
      function()
        require("nvchad_ui.tabufline").tabuflinePrev()
      end,
      "Goto prev buffer",
    },
  },
}

-- more keybinds!

return M
