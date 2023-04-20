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

  local cmp = require("cmp")
  cmp.setup {}

  -- Mappings.
  -- See `:help vim.lsp.*` for documentation on any of the below functions
  local bufopts = { noremap = true, silent = true }

  local keymap = {
    declaration = 'gD',
    definition = 'gd',
    hover = 'K',
    implementation = 'gi',
    -- signature_help = '<c-k>',
    type_definition = 'D',
    rename = '<space>rn',
    code_action = '<c-K>',
    references = 'gr',
    format = '<space>f',
  }

  vim.keymap.set('n', keymap.declaration, keymap.declaration, bufopts)
  vim.keymap.set('n', keymap.definition, vim.lsp.buf.definition, bufopts)
  vim.keymap.set('n', keymap.hover, vim.lsp.buf.hover, bufopts)
  vim.keymap.set('n', keymap.implementation, vim.lsp.buf.implementation, bufopts)
  -- vim.keymap.set('n', '<c-k>', vim.lsp.buf.signature_help, bufopts)

  -- We will use the workspace plugin for this stuff
  -- vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, bufopts)
  -- vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
  -- vim.keymap.set('n', '<space>wl', function()
  --  print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  -- end, bufopts)
  vim.keymap.set('n', keymap.type_definition, vim.lsp.buf.type_definition, bufopts)
  vim.keymap.set('n', keymap.rename, vim.lsp.buf.rename, bufopts)
  vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
  vim.keymap.set('n', '<c-space>', vim.lsp.buf.code_action, bufopts)
  vim.keymap.set('n', keymap.code_action, vim.lsp.buf.code_action, bufopts)
  vim.keymap.set('n', keymap.references, vim.lsp.buf.references, bufopts)
  vim.keymap.set('n', keymap.format, function() vim.lsp.buf.format { async = true } end, bufopts)

  local s = ""
  for k, v in pairs(keymap) do
    s = string.format("%s%s: %s\n", s, k, v)
  end

  vim.keymap.set('n', '<space>h', function()
    require("notify")(string.format([[
Lsp keybinding cheatsheet
-------------------------
%s
    ]], s))
  end)
  -- Formatting
  vim.keymap.set('n', '<C-A-l>', function() vim.lsp.buf.format { async = true } end)

  require("mason-null-ls").setup {
    automatic_setup = true,
  }

  null_ls.setup {}

  local lsp = require("lspconfig")
  lsp.lua_ls.setup {}
  lsp.rust_analyzer.setup {}
end
