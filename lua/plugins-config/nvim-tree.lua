vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup()

-- OR setup with some options
require("nvim-tree").setup({
    git = {
    enable = true, -- Ensure Git integration is enabled
    ignore = false, -- Set this to false to show git-ignored files
  },

  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 30,
    side="right",
    relativenumber=true,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})
