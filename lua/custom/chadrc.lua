---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme = "palenight",
  theme_toggle = { "palenight", "one_light" },

  hl_override = highlights.override,
  hl_add = highlights.add,
  -- load dashboard on startup
  nvdash = {
header = {
"      ▒▒▒▒  ▒▒▒▒                        ",
"    ▒▒  ▒▒▒▒▒▒▒▒▒▒                      ",
"    ▒▒▒▒  ▒▒▒▒▒▒▒▒                      ",
"      ▒▒▒▒▒▒▒▒▒▒                        ",
"        ▒▒▒▒▒▒                          ",
"          ▒▒                            ",
"    ██          ██                      ",
"  ██░░██      ██░░██                    ",
"  ██░░░░██████░░░░██                    ",
"██░░░░░░░░░░░░░░░░░░██                  ",
"██░░░░░░░░░░░░░░░░░░██                  ",
"██░░██░░░░░░░░██░░░░██                  ",
"██░░██░░░░░░░░██░░░░██    ████          ",
"██░░░░░░░░░░░░░░░░░░██  ██    ██        ",
"  ████▒▒▒▒▒▒▒▒▒▒████    ██    ██        ",
"      ██░░▒▒▒▒░░░░░░██    ██    ██      ",
"      ██░░██░░████░░░░██  ██░░░░██      ",
"      ██░░████░░░░██░░██  ██░░░░██      ",
"      ██  ████░░░░░░░░████▒▒▒▒▒▒██      ",
"      ██  ██    ░░░░░░██▒▒▒▒████        ",
"      ██████████████████████            ",
"                                        ",
    },
    header_extra = {
"████  ████  ██████    ████    ██      ██",
"██  ██  ██  ██      ██    ██  ██      ██",
"██      ██  ████    ██    ██  ██      ██",
"██      ██  ██      ██    ██  ██  ██  ██",
"██      ██  ██████    ████      ██  ██  ",
    },
    load_on_startup = true
  }
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"


return M
