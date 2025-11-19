-- <leader> is space
vim.g.mapleader = " "


-- Don't quit visual when doing >
vim.keymap.set("v", ">", ">gv", { noremap = true, silent = true })
-- Don't quit visual when doing <
vim.keymap.set("v", "<", "<gv", { noremap = true, silent = true })


-- Copy into a system buffer: Space + c
vim.keymap.set("v", "<leader>c", '"+y', { noremap = true, silent = true })

-- Mappings for telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

-- Search in project overall
vim.keymap.set("n", "<leader>fF", function()
  local git_root = vim.fn.systemlist("git rev-parse --show-toplevel")[1]
  if vim.v.shell_error ~= 0 then
    git_root = vim.loop.cwd()   -- fallback if not a git repo
  end

  require("telescope.builtin").find_files({
    cwd = git_root,
  })
end, { desc = "Find files (project root)" })

-- Search functions
vim.keymap.set("n", "<A-f>", function()
  require("telescope.builtin").lsp_document_symbols({
    symbols = { "function", "method" }
  })
end, { noremap = true, silent = true })

-- Search classes
vim.keymap.set("n", "<A-c>", function()
  require("telescope.builtin").lsp_document_symbols({
    symbols = { "class" }
  })
end, { noremap = true, silent = true })




-----------------------------------------------------------NVIM-TREE-------
-- Opens explorer
vim.keymap.set("n", "<A-e>", ":NvimTreeFocus<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<A-b>", ":NvimTreeToggle<CR>", { noremap = true, silent = true })
