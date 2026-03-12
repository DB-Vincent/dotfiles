return {
  "nvim-lualine/lualine.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    local lualine = require("lualine")

    lualine.setup({
      sections = {
        lualine_a = {
          { "mode", right_padding = 2 },
        },
        lualine_x = {},
        lualine_y = {
          { "encoding" },
          { "fileformat" },
          { "filetype" },
        },
        lualine_z = {
          { "location", left_padding = 2 },
        },
      },
    })
  end
}
