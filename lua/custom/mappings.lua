---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>wh"] = { "<C-w>h", "Window left" },
    ["<leader>wl"] = { "<C-w>l", "Window right" },
    ["<leader>w="] = { "<cmd> vertical resize +5 <CR>", "Window right" },
    ["<leader>w-"] = { "<cmd> vertical resize -5 <CR>", "Window right" },
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
