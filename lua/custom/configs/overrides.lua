local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "javascript",
    "typescript",
    "tsx",
    "c",
    "markdown",
    "markdown_inline",
    "org", -- for orgmode
  },
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
  -- options for orgmode
  highlight = {
    enable = true,
    -- Required for spellcheck, some LaTex highlights and
    -- code block highlights that do not have ts grammar
    additional_vim_regex_highlighting = {'org'},
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "deno",
    "prettier",

    -- c/cpp stuff
    "clangd",
    "clang-format",
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

M.cmp = {
  cmdline = { ':', {
    sources = {
      { name = 'path' },
      { name = 'cmdline' },
      { name = 'orgmode' },
    }
  }

  },
  sources = {
    { name = "orgmode"},
    { name = "nvim_lsp" },
    { name = "vsnip" },
    { name = "path" },
    { name = "buffer" },
  }
}

M.noice = {
  lsp = {
          -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
          override = {
            ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
            ["vim.lsp.util.stylize_markdown"] = true,
            ["cmp.entry.get_documentation"] = true,
          },
        },
        -- you can enable a preset for easier configuration
  presets = {
          bottom_search = true, -- use a classic bottom cmdline for search
          command_palette = true, -- position the cmdline and popupmenu together
          long_message_to_split = true, -- long messages will be sent to a split
          inc_rename = false, -- enables an input dialog for inc-rename.nvim
          lsp_doc_border = false, -- add a border to hover docs and signature help
        },
  views = {
      cmdline_popup = {
        position = {
          row = 5,
          col = "50%",
        },
        size = {
          width = 60,
          height = "auto",
        },
      },
      popupmenu = {
        relative = "editor",
        position = {
          row = 8,
          col = "50%",
        },
        size = {
          width = 60,
          height = 10,
        },
        border = {
          style = "rounded",
          padding = { 0, 1 },
        },
        win_options = {
          winhighlight = { Normal = "Normal", FloatBorder = "DiagnosticInfo" },
        },
      },
    },
}

-- orgmode overrides
M.org = {
  org_todo_keywords = {'ANCHOR', 'TODO', 'PROGRESS', 'WAITING', '|', 'DONE', 'DISCARDED'},
  org_todo_keyword_faces = {
    ANCHOR = ':foreground orange :weight bold',
    PROGRESS = ':foreground lightgreen :weight bold',
    WAITING = ':foreground lightblue :weight bold',
    DISCARDED = ':background grey :slant italic :underline on',
  },
  win_border = {'╔', '═' ,'╗', '║', '╝', '═', '╚', '║' },
  win_split_mode = function(name)
    local bufnr = vim.api.nvim_create_buf(false, true)
    --- Setting buffer name is required
    vim.api.nvim_buf_set_name(bufnr, name)

    local fill = 0.8
    local width = math.floor((vim.o.columns * fill))
    local height = math.floor((vim.o.lines * fill))
    local row = math.floor((((vim.o.lines - height) / 2) - 1))
    local col = math.floor(((vim.o.columns - width) / 2))

    vim.api.nvim_open_win(bufnr, true, {
      relative = "editor",
      width = width,
      height = height,
      row = row,
      col = col,
      style = "minimal",
      border = "rounded"
    })
  end,
  org_agenda_files = {'~/notes/org/*', '~/notes/my-orgs/**/*'},
  org_default_notes_file = '~/notes/org/refile.org',
}
return M
