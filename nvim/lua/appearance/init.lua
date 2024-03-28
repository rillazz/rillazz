vim.cmd('set termguicolors')

require'lualine'.setup {options = {theme = 'gruvbox'}}
require'colorizer'.setup()

vim.cmd('autocmd vimenter * ++nested colorscheme gruvbox')

require('appearance/ntree')
