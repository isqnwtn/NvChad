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

    -- closing window 
    ["<leader>qq"] ={"<cmd>q<CR>","close window"},
    ["<leader>qa"] ={"<cmd>qa<CR>","close window"},

    -- open link under curson in browser
    ["gx"] = {"<cmd> :execute '!open ' . shellescape(expand('<cfile>'), 1)<CR>",
              "Open link under cursor"},
    ["gm"] = {"%", "Goto matching bracket"},

    -- change words
    ["cis"] = {"ci[","Change inside square brackets"},
    ["cic"] = {"ciB","Change inside curly brackets"},
    ["cid"] = {"ci\"","Change inside double quotes"},
    ["ciq"] = {"ci'","Change inside quotes"},
    ["cia"] = {"ci<","Change inside angle brackets"},

    -- select inside 
    ["vis"] = {"vi[","Select inside square brackets"},
    ["vic"] = {"viB","Select inside curly brackets"},
    ["vid"] = {"vi\"","Select inside double quotes"},
    ["viq"] = {"vi'","Select inside quotes"},
    ["via"] = {"vi<","Select inside angle brackets"},

    -- moving cursor 
    ["mb"] = {"0","Move cursor to beginning"},
    ["mf"] = {"^","Move cursor to beginning"},
    ["me"] = {"$","Move cursor to end"},
    ["mm"] = {"%","Move cursor matching bracket"},
    ["muc"] = {"[{","Move cursor up a curly bracket"},
    ["mdc"] = {"]}","Move cursor down a curly bracket"},
    ["mub"] = {"[(","Move cursor up a bracket"},
    ["mdb"] = {"])","Move cursor down a bracket"},

    -- folding
    ["<leader>zz"] = {"viBzf","Fold curly brackets under cursor"},
    ["<leader>zb"] = {"vibzf","Fold brackets under cursor"},
    ["<leader>zc"] = {
      function ()
        print("hellow")
      end
    },


    -- telescope
    ["<leader>tt"] = { "<cmd> Telescope <CR>", "Open telescope" },
    ["<leader>tw"] = { "<cmd> Telescope spell_suggest <CR>", "Open spelling suggestions" },
    ["<leader>ts"] = { "<cmd> Telescope lsp_document_symbols <CR>", "Open buffer symbol finder" },
    ["<leader>ta"] = { "<cmd> Telescope lsp_dynamic_workspace_symbols <CR>", "Open workspace symbol finder" },

    -- custom lsp stuff
    ["<leader>gr"] = {
      function()
        require('telescope.builtin').lsp_references()
      end
      , "Open lsp references in telescope" },

    -- custom functions for testing stuff
    ["<leader>ct"] = { "<cmd>.s/</&lt;/g <CR>"},
  },
  v = {
    ["<leader>yc"] = {"\"*y" , "Copy to system clipboard"},

    -- moving curosor
    ["mb"] = {"0","Move cursor to beginning"},
    ["mf"] = {"^","Move cursor to beginning"},
    ["me"] = {"$","Move cursor to end"},
    ["mm"] = {"%","Move cursor matching bracket"},
    ["muc"] = {"[{","Move cursor up a curly bracket"},
    ["mub"] = {"[{","Move cursor up a bracket"},
  }
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
