return {
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {},
    event = "User AstroFile",
    cmd = { "TodoQuickFix" }
  },
  {
    "ray-x/navigator.lua",
    dependencies = { "ray-x/guihua.lua", "neovim/nvim-lspconfig", run = "cd lua/fzy && make" },
    opts = {},
    event = "User AstroFile"
  },
  {
    "kdheepak/lazygit.nvim",
    -- optional for floating window border decoration
    dependencies = { "nvim-lua/plenary.nvim" },
  },
  {
    "andweeb/presence.nvim",
    opts = {

      -- General options
      auto_update         = true,                       -- Update activity based on autocmd events (if `false`, map or manually execute `:lua package.loaded.presence:update()`)
      neovim_image_text   = "The One True Text Editor", -- Text displayed when hovered over the Neovim image
      main_image          = "file",                     -- Main image display (either "neovim" or "file")
      client_id           = "793271441293967371",       -- Use your own Discord application client id (not recommended)
      log_level           = nil,                        -- Log messages at or above this level (one of the following: "debug", "info", "warn", "error")
      debounce_timeout    = 10,                         -- Number of seconds to debounce events (or calls to `:lua package.loaded.presence:update(<filename>, true)`)
      enable_line_number  = false,                      -- Displays the current line number instead of the current project
      blacklist           = {},                         -- A list of strings or Lua patterns that disable Rich Presence if the current file name, path, or workspace matches
      buttons             = true,                       -- Configure Rich Presence button(s), either a boolean to enable/disable, a static table (`{{ label = "<label>", url = "<url>" }, ...}`, or a function(buffer: string, repo_url: string|nil): table)
      file_assets         = {},                         -- Custom file asset definitions keyed by file names and extensions (see default config at `lua/presence/file_assets.lua` for reference)
      show_time           = false,                       -- Show the timer

      -- Rich Presence text options
      editing_text        = "Editing %s",         -- Format string rendered when an editable file is loaded in the buffer (either string or function(filename: string): string)
      file_explorer_text  = "Browsing %s",        -- Format string rendered when browsing a file explorer (either string or function(file_explorer_name: string): string)
      git_commit_text     = "Committing changes", -- Format string rendered when committing changes in git (either string or function(filename: string): string)
      plugin_manager_text = "Managing plugins",   -- Format string rendered when managing plugins (either string or function(plugin_manager_name: string): string)
      reading_text        = "Reading %s",         -- Format string rendered when a read-only or unmodifiable file is loaded in the buffer (either string or function(filename: string): string)
      workspace_text      = "Working on %s",      -- Format string rendered when in a git repository (either string or function(project_name: string|nil, filename: string): string)
      line_number_text    = "Line %s out of %s",  -- Format string rendered when `enable_line_number` is set to true (either string or function(line_number: number, line_count: number): string)
    },
    lazy = false
  },
  {
    "xiyaowong/transparent.nvim",
    opts = {
      groups = { -- table: default groups
        'Normal', 'NormalNC', 'Comment', 'Constant', 'Special', 'Identifier',
        'Statement', 'PreProc', 'Type', 'Underlined', 'Todo', 'String', 'Function',
        'Conditional', 'Repeat', 'Operator', 'Structure', 'LineNr', 'NonText',
        'SignColumn', 'CursorLine', 'CursorLineNr', 'StatusLine', 'StatusLineNC',
        'EndOfBuffer',
      },
      extra_groups = {
        "NormalFloat",    -- plugins which have float panel such as Lazy, Mason, LspInfo
        "NvimTreeNormal", -- NvimTree
        "session_manager",
        "plenary"
      },
    },
    lazy = false,
  },
  {
    "EdenEast/nightfox.nvim",
    opts = {
      options = {
        module_default = true,
        modules = {
          aerial = true,
          cmp = true,
          ["dap-ui"] = true,
          dashboard = true,
          diagnostic = true,
          gitsigns = true,
          native_lsp = true,
          neotree = true,
          notify = true,
          symbol_outline = true,
          telescope = true,
          treesitter = true,
          whichkey = true,
        },
      },
      groups = { all = { NormalFloat = { link = "Normal" } } },
    },
  },
  {
    'goolord/alpha-nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
      opts = function()
        local dashboard = require "alpha.themes.dashboard"
        dashboard.section.header.val = {
" ▄▄▄        ██████ ▄▄▄█████▓ ██▀███   ▒█████      ███▄    █ ██▒   █▓ ██▓ ███▄ ▄███▓",
"▒████▄    ▒██    ▒ ▓  ██▒ ▓▒▓██ ▒ ██▒▒██▒  ██▒    ██ ▀█   █▓██░   █▒▓██▒▓██▒▀█▀ ██▒",
"▒██  ▀█▄  ░ ▓██▄   ▒ ▓██░ ▒░▓██ ░▄█ ▒▒██░  ██▒   ▓██  ▀█ ██▒▓██  █▒░▒██▒▓██    ▓██░",
"░██▄▄▄▄██   ▒   ██▒░ ▓██▓ ░ ▒██▀▀█▄  ▒██   ██░   ▓██▒  ▐▌██▒ ▒██ █░░░██░▒██    ▒██ ",
"▓█   ▓██▒▒██████▒▒  ▒██▒ ░ ░██▓ ▒██▒░ ████▓▒░   ▒██░   ▓██░  ▒▀█░  ░██░▒██▒   ░██▒",
"▒▒   ▓▒█░▒ ▒▓▒ ▒ ░  ▒ ░░   ░ ▒▓ ░▒▓░░ ▒░▒░▒░    ░ ▒░   ▒ ▒   ░ ▐░  ░▓  ░ ▒░   ░  ░",
"▒   ▒▒ ░░ ░▒  ░ ░    ░      ░▒ ░ ▒░  ░ ▒ ▒░    ░ ░░   ░ ▒░  ░ ░░   ▒ ░░  ░      ░",
"░   ▒   ░  ░  ░    ░        ░░   ░ ░ ░ ░ ▒        ░   ░ ░     ░░   ▒ ░░      ░   ",
      "░  ░      ░              ░         ░ ░              ░      ░   ░         ░   ",
                                                                "░                  ",
 }
      dashboard.section.header.opts.hl = "DashboardHeader"

        local button = require("astronvim.utils").alpha_button
        dashboard.section.buttons.val = {
          button("LDR n", "  New File  "),
          button("LDR f f", "  Find File  "),
          button("LDR f o", "󰈙  Recents  "),
          button("LDR f w", "󰈭  Find Word  "),
          button("LDR f '", "  Bookmarks  "),
          button("LDR S l", "  Last Session  "),
        }

        dashboard.config.layout[1].val = vim.fn.max { 2, vim.fn.floor(vim.fn.winheight(0) * 0.2) }
        dashboard.config.layout[3].val = 5
        dashboard.config.opts.noautocmd = true
        return dashboard
      end,
    lazy = false,
  },
  -- {
  --   "leoluz/nvim-dap-go",
  --   opts = {},
  --   lazy = false
  -- }
  -- -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
}
