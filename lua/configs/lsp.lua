local function handling_autocomplete()
  -- Smart tab code
  -- https://github.com/hrsh7th/nvim-compe/issues/141#issuecomment-774304229

  local cmp = require("cmp")
  cmp.setup {
    mapping = cmp.mapping.preset.insert {
      ['<C-Space>'] = cmp.mapping.complete(),
    }
  }
end

local function configure_mapping()
  -- Mappings.
  -- See `:help vim.lsp.*` for documentation on any of the below functions
  local bufopts = { noremap = true, silent = true }

  local keymap = {
    declaration = 'gD',
    definition = 'gd',
    hover = 'K',
    implementation = 'gi',
    -- signature_help = '<c-k>',
    type_definition = 'T',
    rename = '<space>rn',
    code_action = '<c-K>',
    references = 'gr',
    format = '<space>f',
    alt_format = '<C-A-l>',
  }

  vim.keymap.set('n', keymap.declaration, keymap.declaration, bufopts)
  vim.keymap.set('n', keymap.definition, vim.lsp.buf.definition, bufopts)
  vim.keymap.set('n', keymap.hover, vim.lsp.buf.hover, bufopts)
  vim.keymap.set('n', keymap.implementation, vim.lsp.buf.implementation, bufopts)
  vim.keymap.set('n', keymap.type_definition, vim.lsp.buf.type_definition, bufopts)
  vim.keymap.set('n', keymap.rename, vim.lsp.buf.rename, bufopts)
  vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
  vim.keymap.set('n', '<c-space>', vim.lsp.buf.code_action, bufopts)
  vim.keymap.set('n', keymap.code_action, vim.lsp.buf.code_action, bufopts)
  vim.keymap.set('n', keymap.references, vim.lsp.buf.references, bufopts)
  vim.keymap.set('n', keymap.format, function() vim.lsp.buf.format { async = true } end, bufopts)
  vim.keymap.set('n', keymap.alt_format, function() vim.lsp.buf.format { async = true } end)
end

return function()
  local null_ls = require("null-ls")

  require("mason").setup {
    ui = {
      icons = {
        package_installed = "✓",
        package_pending = "➜",
        package_uninstalled = "✗"
      }
    },
  }
  require("mason-lspconfig").setup {
    ensure_installed = { "lua_ls", "rust_analyzer" }
  }


  require("mason-null-ls").setup {
    automatic_setup = true,
  }

  null_ls.setup {}

  configure_mapping()

  local lsp = require("lspconfig")
  lsp.lua_ls.setup {}
  lsp.rust_analyzer.setup {}
  lsp.nimls.setup {}

  handling_autocomplete()
end
