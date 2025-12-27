return {
  "romgrk/barbar.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("barbar").setup({
      animation = true,
      auto_hide = false,
      tabpages = true,
      clickable = true,
      icons = {
        button = "󰅖",
        modified = { button = "●" },
        pinned = { button = "󰐃", filename = true },
        inactive = {},
        separator = { left = "▎", right = "" },
        diagnostics = {
          [vim.diagnostic.severity.ERROR] = { enabled = true, icon = "󰅚 " },
          [vim.diagnostic.severity.WARN] = { enabled = true, icon = "󰀪 " },
          [vim.diagnostic.severity.INFO] = { enabled = true, icon = "󰋽 " },
          [vim.diagnostic.severity.HINT] = { enabled = true, icon = "󰌶 " },
        },
      },
      sidebar_filetypes = {
        NvimTree = true,
      },
    })
  end,
}

