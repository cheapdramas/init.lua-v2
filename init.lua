-- Everything here is for nvim 0.12 +
require('install-plugins')
require("plugins-config/xkblayout")
require("plugins-config/lsp")
require("plugins-config/trouble")
require("plugins-config/telescope")
require("plugins-config/rose-pine")
require("plugins-config/vague")
require("plugins-config/gruvbox")
require("plugins-config/treesitter")
require("plugins-config/lualine")
require("plugins-config/cmp")
require("plugins-config/web-devicons")
require("plugins-config/nvim-tree")
require('mappings')



vim.opt.tabstop = 4      -- ширина таба
vim.opt.shiftwidth = 4   -- ширина авто-індента (>> <<)
vim.opt.expandtab = true -- таб = пробіли
vim.opt.softtabstop = 4  -- бекспейс стирає 4 пробіли як таб



-- Set colorscheme
vim.cmd("colorscheme vague")
vim.cmd("set background=dark")

-- Set relativenumbers
vim.cmd("set relativenumber")
vim.cmd("set number")

-- Set line numbers color
vim.api.nvim_set_hl(0, 'LineNr', { fg = '#AABBCC', bg = 'NONE', bold = true })

-- Transparent settings
vim.api.nvim_set_hl(0, 'Normal', { bg = "NONE" })
vim.api.nvim_set_hl(0, 'NormalFloat', { bg = "NONE" })

vim.api.nvim_set_hl(0, 'StatusLine', { bg = "NONE" })
vim.api.nvim_set_hl(0, 'StatusLineNC', { bg = "NONE" })

vim.api.nvim_set_hl(0, 'WinBar', { bg = "NONE" })
vim.api.nvim_set_hl(0, 'WinBarNC', { bg = "NONE" })
--
-- vim.api.nvim_create_autocmd("ColorScheme", {
--     callback = function()
--         vim.api.nvim_set_hl(0, 'Normal', { bg = "NONE" })
--         vim.api.nvim_set_hl(0, 'NormalFloat', { bg = "NONE" })
--
--         vim.api.nvim_set_hl(0, 'StatusLine', { bg = "NONE" })
--         vim.api.nvim_set_hl(0, 'StatusLineNC', { bg = "NONE" })
--
--         vim.api.nvim_set_hl(0, 'WinBar', { bg = "NONE" })
--         vim.api.nvim_set_hl(0, 'WinBarNC', { bg = "NONE" })
--     end
-- })
-- vim.api.nvim_set_hl(0, 'TelescopeNormal', { bg = "NONE" })
-- vim.api.nvim_set_hl(0, 'TelescopeBorder', { bg = "NONE" })
-- vim.api.nvim_set_hl(0, 'TelescopePromptNormal', { bg = "NONE" })
-- vim.api.nvim_set_hl(0, 'TelescopePromptBorder', { bg = "NONE" })

-- Make statusline thinner using '-'
vim.api.nvim_create_autocmd("WinEnter", {
    callback = function()
        vim.opt.fillchars = {
            stl = "─",
            stlnc = "─",
        }
    end,
})

-- Make WinSeparator beautifull
vim.api.nvim_set_hl(0, "WinSeparator", { fg = "#AABBCC", bg = "NONE" })
