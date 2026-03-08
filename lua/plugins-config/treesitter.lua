require("nvim-treesitter.configs").setup({
      highlight = { enable = true },
      indent = { enable = true },

        ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline","python", "go"},

	  -- Install parsers synchronously (only applied to `ensure_installed`)
	  sync_install = false,
	  auto_install = true,
})
