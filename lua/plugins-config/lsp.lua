require("mason").setup()
require("mason-lspconfig").setup()
require("mason-tool-installer").setup({
  ensure_installed = {
    "lua_ls",
    "pyright",
    "stylua",
  },
})

-- Diagnostics
vim.diagnostic.config({
  virtual_text = {
    severity = {
      min = vim.diagnostic.severity.HINT,
    },
    prefix = " ",
  },
  signs = false,
  underline = true,
  update_in_insert = false,
})

-- Capabilities for cmp
local capabilities = require("cmp_nvim_lsp").default_capabilities()

-- Lua LSP
vim.lsp.config("lua_ls", {
  capabilities = capabilities,
  settings = {
    Lua = {
      runtime = { version = "LuaJIT" },
      diagnostics = { globals = { "vim", "require" } },
      workspace = { library = vim.api.nvim_get_runtime_file("", true) },
      telemetry = { enable = false },
    },
  },
})

-- Python LSP (Pyright)
vim.lsp.config("pyright", {
  capabilities = capabilities,
})

-- Enable LSP
vim.lsp.enable("lua_ls")
vim.lsp.enable("pyright")
