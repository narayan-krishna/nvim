require('packer-install')
require('vim-config')
require('treesitter')
require('lsp')
require('keybinds')
require('completion')
require('utilities')
require('telescope-config')

require('Comment').setup{}
require('nvim-autopairs').setup{}
require('project_nvim').setup{}
require('luatab').setup{}
require('nvim-startup').setup()
require('gitsigns').setup()
