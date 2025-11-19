local devicons = require('nvim-web-devicons')

local default_theme = { fg = "#000000", bg = "None" }

require('lualine').setup {
  options = {

	theme = {
            normal = {
                a = default_theme,
                b = default_theme,
                c = default_theme,
                x = default_theme,
                y = default_theme,
                z = default_theme,
                -- ... и все разделы, которые ты используешь
            },
            inactive = {
                a = default_theme,
                b = default_theme,
                c = default_theme,
                x = default_theme,
                y = default_theme,
                z = default_theme,
                 -- ... и все разделы, которые ты используешь
            },
        },




    icons_enabled = true,
    transparent = true,
    component_separators = "",
    -- section_separators = { left = "", right = "" },
    section_separators = { left = "", right = "" },
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    always_show_tabline = true,
    globalstatus = true,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
      refresh_time = 16, -- ~60fps
      events = {
        'WinEnter',
        'BufEnter',
        'BufWritePost',
        'SessionLoadPost',
        'FileChangedShellPost',
        'VimResized',
        'Filetype',
        'CursorMoved',
        'CursorMovedI',
        'ModeChanged',
      },
    }
  },
  sections = {
   lualine_a = {},
   lualine_b = {function() return os.date("%H:%M") end},
    lualine_c = {
      "%=",
      {
        function()
          local fname = vim.fn.expand("%:t")    -- имя файла
          local ext = vim.fn.expand("%:e")      -- расширение файла
          local icon, hl = devicons.get_icon(fname, ext, {default = true})
          return (icon or "").." "..fname
        end,
        -- color = {fg = nil, bg = nil}, -- цвет оставляем стандартным
        padding = {left = 0, right = 1},
      }
    },
    lualine_x = {{ "xkblayout"},},
    lualine_y = {},
    lualine_z = {}
  },
  inactive_sections = {
   lualine_a = {},
   lualine_b = {function() return os.date("%H:%M") end},
    lualine_c = {
      "%=",
      {
        function()
          local fname = vim.fn.expand("%:t")    -- имя файла
          local ext = vim.fn.expand("%:e")      -- расширение файла
          local icon, hl = devicons.get_icon(fname, ext, {default = true})
          return (icon or "").." "..fname
        end,
        -- color = {fg = nil, bg = nil}, -- цвет оставляем стандартным
        padding = {left = 0, right = 1},
      }
    },
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {
    lualine_a = {},
    lualine_b = {{"filename", path = 1,}},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {{"[ACTIVE]"}}
  },
  inactive_winbar = {
    lualine_a = {},
    lualine_b = {{"filename", path = 1,}},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {}
  },
  extensions = {}
}
