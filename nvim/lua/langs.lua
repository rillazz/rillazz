require("mason").setup()

require('lint').linters_by_ft = {
  markdown = {'vale',},
  python = {'pylint',}
}

require('luasnip.loaders.from_vscode').lazy_load()

local cmp = require'cmp'

cmp.setup {
	snippet = {expand = function(args)
	require('luasnip').lsp_expand(args.body)
	end},

	mapping = cmp.mapping.preset.insert({
	  ['<C-b>'] = cmp.mapping.scroll_docs(-4),
	  ['<C-f>'] = cmp.mapping.scroll_docs(4),
	  ['<C-Space>'] = cmp.mapping.complete(),
	  ['<C-e>'] = cmp.mapping.abort(),
	  ['<CR>'] = cmp.mapping.confirm({ select = true }),
	}),

	sources = cmp.config.sources({
	{name = 'nvim_lsp'},
	{name = 'luasnip'},
	}, {
	   {name = 'buffer'},
	})
}

local lc = require('lspconfig')

lc.pyright.setup{
	on_attach = function() end,
	capabilities = require('cmp_nvim_lsp').default_capabilities(),
	filetypes = {"python"}
}

lc.lua_ls.setup{
	on_attach = function() end,
	settings = {
		Lua = {
			diagnostics = {
				globals = { 'vim' }
			}
		}
	},
	capabilities = require('cmp_nvim_lsp').default_capabilities(),
	filetypes = {"lua"}
}

require('nvim-ts-autotag').setup()
require("autoclose").setup()
