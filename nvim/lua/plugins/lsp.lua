return {
  -- tools
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "luacheck",
        "shellcheck",
        "shfmt",
        "typescript-language-server",
        "css-lsp",
        "gopls",
        "gci",
        "golangci-lint",
        "hclfmt",
        "terraform-ls",
      })
    end,
  },
}
