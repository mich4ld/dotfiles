local lspconfig = require('lspconfig')

local servers = { 
  'rust_analyzer', 
  'tsserver',
  'bashls',
  'emmet_ls'
}

require('completion')
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

for _, lsp in pairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    flags = {
      debounce_text_changes = 150,
      capabilities = capabilities
    }
  }
end

require("indent_blankline").setup {
  buftype_exclude = { "terminal" },
  filetype_exclude = { "dashboard" },
}

require('feline').setup({ components = require('catppuccin.core.integrations.feline') })
