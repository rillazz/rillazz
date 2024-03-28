local function open_nvim_tree()
    require'nvim-tree.api'.tree.toggle{
		focus=false
	}
end

local function n_on_attach(bufnr)
    local api = require "nvim-tree.api"

    api.config.mappings.default_on_attach(bufnr)
    vim.keymap.set('n', '<C-a>', api.tree.toggle)
end

require("nvim-tree").setup{on_attach = n_on_attach}

vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })
