return {
  'nvim-tree/nvim-tree.lua',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  opts = {
    auto_reload_on_write = true,
    hijack_cursor = true,
    sync_root_with_cwd = true,
    renderer = {
      group_empty = true,
      full_name = false,
      highlight_git = "all",
      special_files = { "README.md", "readme.md" },
      indent_markers = {
        enable = true,
        inline_arrows = true,
      },
      icons = {
        show = {
          file = true,
          folder = true,
          folder_arrow = true,
          git = true,
        },
      }
    },
  },
}
