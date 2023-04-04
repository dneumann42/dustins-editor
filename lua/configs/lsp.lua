return function()
--   local lsp = require("lspconfig")
-- 
--   local opts = { noremap = true, silent = true }
-- 
--   vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
--   vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
--   vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
--   vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist, opts)
--   
--   local function on_attach(client, bufnr)
--     -- Enable completion triggered by <c-x><c-o>
--     vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
-- 
--     -- Mappings.
--     -- See `:help vim.lsp.*` for documentation on any of the below functions
--     local bufopts = { noremap = true, silent = true, buffer = bufnr }
--     vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
--     vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
--     vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
--     vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
--     vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
--     vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, bufopts)
--     vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
--     vim.keymap.set('n', '<space>wl', function()
--       print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
--     end, bufopts)
--     vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, bufopts)
--     vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
--     vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
--     vim.keymap.set('n', '<C-space>', vim.lsp.buf.code_action, bufopts)
--     vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
--     vim.keymap.set('n', '<space>f', function() vim.lsp.buf.format { async = true } end, bufopts)
--   end
-- 
--   require('cmp_nvim_lsp').default_capabilities()
-- 
--   -- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
--   
--   lsp.nimls.setup { on_attach = on_attach }
--   lsp.tsserver.setup { on_attach = on_attach }
--   lsp.lua_ls.setup {
--     cmd = { 'lua-language-server' },
--     on_attach = on_attach,
--     settings = {
--       Lua = {
--         telemetry = { enable = false, },
--         runtime = { version = "LuaJIT", path = { vim.split(package.path, ';') }, },
--         completion = { keywordSnippet = "Disable", },
--         diagnostics = { enable = true, globals = { "vim", "describe", "it", "before_each", "after_each" } },
--         workspace = {
--           library = { [vim.fn.expand("$VIMRUNTIME/lua")] = true, [vim.fn.expand("$VIMRUNTIME/lua/vim/lsp")] = true },
--           maxPreload = 1000,
--           preloadFileSize = 1000,
--         }
--       }
--     }
--   }
-- 
--   lsp.ocamllsp.setup { on_attach = on_attach }


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

  -- Mappings.
  -- See `:help vim.lsp.*` for documentation on any of the below functions
  local bufopts = { noremap = true, silent = true }
  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
  vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
  vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, bufopts)
  vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
  vim.keymap.set('n', '<space>wl', function()
    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  end, bufopts)
  vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, bufopts)
  vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
  vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
  vim.keymap.set('n', '<c-space>', vim.lsp.buf.code_action, bufopts)
  vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
  vim.keymap.set('n', '<space>f', function() vim.lsp.buf.format { async = true } end, bufopts)

  require("mason-null-ls").setup {
    automatic_setup = true,
  }

  null_ls.setup {}

  local lsp = require("lspconfig")
  lsp.lua_ls.setup {}

end
