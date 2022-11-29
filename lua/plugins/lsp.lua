-- lsp servers
require('mason').setup({
    ui = {
        icons = {
            package_installed = '✓',
            package_pending = '➜',
            package_uninstalled = '✗',
        },
    },
})

require('mason-lspconfig').setup({
    ensure_installed = {
        'clangd', -- c/c++
        'cmake',
        -- 'cssls', -- css
        -- 'dartls', -- dart
        'dockerls', -- docker
        'gopls', -- go
        -- 'html',
        -- 'jsonls', -- json
        -- 'tsserver', -- js/ts
        'sumneko_lua', -- lua
        -- 'markman', -- markdown
        'nimls', -- nim
        'pyright', -- python
        'rust_analyzer', -- rust
        'sqls', -- sql
        -- 'vuels', -- vue
        'yamlls', -- yaml
        'lemminx', -- xml
    },
})

-- 启动 lsp
require 'lspconfig'.gopls.setup {}
require 'lspconfig'.clangd.setup {}
require 'lspconfig'.cmake.setup {}
require 'lspconfig'.dockerls.setup {}
require 'lspconfig'.sumneko_lua.setup {}
require 'lspconfig'.sqls.setup {}
require 'lspconfig'.lemminx.setup {}
require 'lspconfig'.rust_analyzer.setup {}
require 'lspconfig'.nimls.setup {}
require 'lspconfig'.pyright.setup {}

-- 代码补全
local lspkind = require('lspkind')
local cmp = require 'cmp'

cmp.setup {
    -- 指定 snippet 引擎
    snippet = {
        expand = function(args)
            -- For `vsnip` users.
            vim.fn["vsnip#anonymous"](args.body)

            -- For `luasnip` users.
            -- require('luasnip').lsp_expand(args.body)

            -- For `ultisnips` users.
            -- vim.fn["UltiSnips#Anon"](args.body)

            -- For `snippy` users.
            -- require'snippy'.expand_snippet(args.body)
        end,
    },
    -- 来源
    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        -- For vsnip users.
        { name = 'vsnip' },
        -- For luasnip users.
        -- { name = 'luasnip' },
        --For ultisnips users.
        -- { name = 'ultisnips' },
        -- -- For snippy users.
        -- { name = 'snippy' },
    }, { { name = 'buffer' },
        { name = 'path' }
    }),

    -- 快捷键
    mapping = require 'user.keymaps'.cmp(cmp),
    -- 使用lspkind-nvim显示类型图标
    formatting = {
        format = lspkind.cmp_format({
            with_text = true, -- do not show text alongside icons
            maxwidth = 50, -- prevent the popup from showing more than provided characters (e.g 50 will not show more than 50 characters)
            before = function(entry, vim_item)
                -- Source 显示提示来源
                vim_item.menu = "[" .. string.upper(entry.source.name) .. "]"
                return vim_item
            end
        })
    },
}

-- Use buffer source for `/`.
cmp.setup.cmdline('/', {
    sources = {
        { name = 'buffer' }
    }
})

-- Use cmdline & path source for ':'.
cmp.setup.cmdline(':', {
    sources = cmp.config.sources({
        { name = 'path' }
    }, {
        { name = 'cmdline' }
    })
})
