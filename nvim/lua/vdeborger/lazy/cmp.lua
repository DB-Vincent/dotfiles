return {
  "hrsh7th/nvim-cmp",
  event = "InsertEnter",
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",  -- LSP completion
    "hrsh7th/cmp-buffer",     -- Buffer words
    "hrsh7th/cmp-path",       -- File paths
    "L3MON4D3/LuaSnip",       -- Snippet engine
    "saadparwaiz1/cmp_luasnip", -- Snippet completion
    "neovim/nvim-lspconfig",  -- LSP support
  },
  config = function()
    local cmp = require("cmp")
    local lspconfig = require("lspconfig")
    local capabilities = require("cmp_nvim_lsp").default_capabilities()

    -- nvim-cmp setup
    cmp.setup({
      snippet = {
        expand = function(args)
          require("luasnip").lsp_expand(args.body)
        end,
      },
      mapping = cmp.mapping.preset.insert({
        ["<C-Space>"] = cmp.mapping.complete(),
        ["<CR>"] = cmp.mapping.confirm({ select = true }),
        ["<Tab>"] = cmp.mapping.select_next_item(),
        ["<S-Tab>"] = cmp.mapping.select_prev_item(),
      }),
      sources = cmp.config.sources({
        { name = "nvim_lsp" },  -- Main source (LSP)
        { name = "luasnip" },
        { name = "buffer" },
        { name = "path" },
      }),
    })

    -- Ensure gopls and ts_ls use nvim-cmp for completion
    lspconfig.gopls.setup({
      capabilities = capabilities,
    })

    lspconfig.ts_ls.setup({
      capabilities = capabilities,
    })
  end,
}

