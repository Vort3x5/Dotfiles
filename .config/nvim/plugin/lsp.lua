require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { 
	  "clangd", 
	  "pyright", 
	  "lua_ls" 
  },
})

local capabilities = require("cmp_nvim_lsp").default_capabilities()
local lspconfig = require("lspconfig")

lspconfig.clangd.setup({ capabilities = capabilities })
lspconfig.pyright.setup({ capabilities = capabilities })
lspconfig.lua_ls.setup({
  capabilities = capabilities,
  settings = {
    Lua = {
      diagnostics = { globals = { "vim" } }
    }
  }
})

local cmp = require("cmp")
cmp.setup({
  mapping = {
    ['<Tab>'] = cmp.mapping.select_next_item(),
    ['<S-Tab>'] = cmp.mapping.select_prev_item(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
  },
  sources = {
    { name = 'nvim_lsp' },
  }
})
