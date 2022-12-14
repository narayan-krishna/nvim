-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require('packer-install')
require('vim-config')
require('treesitter-config')
require('lsp-config')
require('keybind-config')
require('completion-config')
require('telescope-config')
require('bufferline-config')
require('tree-config')
require('el-config')
require('utilities')

require('nvim-autopairs').setup{}
require('project_nvim').setup{}
require('luatab').setup{}
require('gitsigns').setup{}
require('Comment').setup{}
