# Neovim Configuration

A modern Neovim configuration with a curated set of plugins and keybindings.

## Table of Contents

- [Plugins](#plugins)
- [Key Mappings](#key-mappings)
- [Settings](#settings)
- [Installation](#installation)

## Plugins

### Core Plugins

- **[lazy.nvim](https://github.com/folke/lazy.nvim)** - Plugin manager
- **[tokyonight.nvim](https://github.com/folke/tokyonight.nvim)** - Color scheme
- **[lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)** - Statusline at bottom of editor
- **[barbar.nvim](https://github.com/romgrk/barbar.nvim)** - Buffer tabs with animations and diagnostics
- **[nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua)** - File explorer
- **[telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)** - Fuzzy finder (v0.1.5)
- **[vim-fugitive](https://github.com/tpope/vim-fugitive)** - Git integration
- **[autoclose.nvim](https://github.com/m4xshen/autoclose.nvim)** - Auto-close brackets, quotes, etc.
- **[nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)** - LSP configuration for Neovim
- **[mason.nvim](https://github.com/williamboman/mason.nvim)** - LSP/DAP/Linter/Formatter installer
- **[mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim)** - Bridge between Mason and lspconfig

### Dependencies

- **nvim-web-devicons** - Icons for various plugins
- **plenary.nvim** - Required by Telescope

### Language Servers

The following language servers are automatically installed via Mason:

- **gopls** - Go language server
- **tsserver** - TypeScript/JavaScript language server
- **yamlls** - YAML language server
- **lua_ls** - Lua language server
- **jsonls** - JSON language server
- **bashls** - Bash language server

## Key Mappings

### Leader Key
- Leader key is set to `<Space>`

### General Navigation
- `<C-d>` - Scroll down and center cursor
- `<C-u>` - Scroll up and center cursor
- `n` - Next search result (centered)
- `N` - Previous search result (centered)
- `<leader><leader>` - Reload current file

### Visual Mode
- `J` - Move selected block down
- `K` - Move selected block up
- `<leader>p` - Paste over selection without overwriting register
- `<leader>d` - Delete selection without overwriting register

### Clipboard Operations
- `<leader>yy` - Copy selection to system clipboard
- `<leader>pp` - Paste from system clipboard
- `<leader>y1` - Copy selection to primary selection
- `<leader>p1` - Paste from primary selection
- `<leader>ya` - Yank entire file to system clipboard
- `<leader>pa` - Paste entire file from system clipboard

### Search & Replace
- `<C-s>` - Search/replace current word (saves to h register)

### Buffer Management
- `<Tab>` - Next buffer
- `<S-Tab>` - Previous buffer
- `<leader>q` - Close current buffer

### Telescope (Fuzzy Finder)
- `<leader>pf` - Find files
- `<C-p>` - Find git files
- `<leader>pws` - Grep current word (cword)
- `<leader>pWs` - Grep current WORD
- `<leader>ps` - Grep string (interactive)
- `<leader>vh` - Help tags

### Git (Fugitive)
- `<leader>gs` - Git status
- `<leader>gc` - Git commit
- `<leader>gp` - Git push
- `<leader>gl` - Git pull
- `<leader>gd` - Git diff split
- `<leader>gb` - Git blame

### LSP (Language Server Protocol)

#### Navigation
- `gD` - Go to declaration
- `gd` - Go to definition
- `K` - Hover documentation
- `gi` - Go to implementation
- `<C-k>` - Signature help
- `gr` - Show references
- `<leader>D` - Type definition

#### Code Actions
- `<leader>rn` - Rename symbol
- `<leader>ca` - Code actions

#### Workspace
- `<leader>wa` - Add workspace folder
- `<leader>wr` - Remove workspace folder
- `<leader>wl` - List workspace folders

#### Formatting
- `<leader>f` - Format current buffer using LSP

#### Diagnostics
- `[d` - Previous diagnostic
- `]d` - Next diagnostic
- `<leader>e` - Show diagnostic in floating window
- `<leader>dl` - Show diagnostics in location list

## Configuration Structure

```
~/.config/nvim/
├── init.lua                 # Entry point
├── lua/
│   └── vdeborger/
│       ├── init.lua         # Main initialization
│       ├── set.lua          # Editor settings
│       ├── remap.lua        # Key mappings
│       ├── lazy_init.lua    # Lazy.nvim setup
│       └── lazy/
│           ├── tokyonight.lua
│           ├── lualine.lua
│           ├── bufferline.lua
│           ├── telescope.lua
│           ├── nvim-tree.lua
│           ├── fugitive.lua
│           ├── autoclose.lua
│           └── lspconfig.lua
└── README.md
```

## Notes

- The configuration uses lazy.nvim for plugin management
- All plugins are configured in separate files under `lua/vdeborger/lazy/`
- Key mappings are organized in `lua/vdeborger/remap.lua`
- Editor settings are in `lua/vdeborger/set.lua`

