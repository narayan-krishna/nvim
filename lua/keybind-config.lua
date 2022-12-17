local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true }

-- normal mode keymaps
local function nkeymap(key,map)
  keymap('n', key, map, opts)
end

-- set leader to space
vim.g.mapleader = " "

-- lsp
nkeymap('gd', ':lua vim.lsp.buf.definition()<cr>')
nkeymap('gD', ':lua vim.lsp.buf.declaration()<cr>')
nkeymap('gi', ':lua vim.lsp.buf.implementation()<cr>')
-- NOTE: double bind ?
nkeymap('gw', ':lua vim.lsp.buf.document_symbol()<cr>')
nkeymap('gw', ':lua vim.lsp.buf.workspace_symbol()<cr>')
nkeymap('gr', ':lua vim.lsp.buf.references()<cr>')
nkeymap('gt', ':lua vim.lsp.buf.type_definition()<cr>')
nkeymap('K', ':lua vim.lsp.buf.hover()<cr>')
nkeymap('<c-k>', ':lua vim.lsp.buf.signature_help()<cr>')
nkeymap('<leader>af', ':lua vim.lsp.buf.code_action()<cr>')
nkeymap('<leader>rn', ':lua vim.lsp.buf.rename()<cr>')
nkeymap('<leader>e', ':lua vim.diagnostic.open_float()<cr>')
nkeymap('[d', '<cmd>lua vim.diagnostic.goto_prev()<cr>')
nkeymap(']d', '<cmd>lua vim.diagnostic.goto_next()<cr>')

-- telescope
nkeymap('<leader>ff', '<cmd>Telescope find_files<cr>')
nkeymap('<leader>fg', '<cmd>Telescope live_grep<cr>')
nkeymap('<leader>fb', '<cmd>Telescope buffers<cr>')
nkeymap('<leader>fh', '<cmd>Telescope help_tags<cr>')
nkeymap('<leader>fp', '<cmd>Telescope projects<cr>')
nkeymap('<leader>fr', '<cmd>Telescope oldfiles<cr>')
nkeymap('<leader>fc', '<cmd>Telescope colorscheme<cr>')
nkeymap('<leader>fd', '<cmd>TodoTelescope<cr>')

-- change these to use control
-- nkeymap('<M-n>', '<cmd>tabnew<cr>')
nkeymap('<M-p>', '<cmd>BufferPrevious<cr>')
nkeymap('<M-n>', '<cmd>BufferNext<cr>')
nkeymap('<M-c>', '<cmd>BufferClose<cr>')
nkeymap('<C-p>', '<cmd>BufferPick<cr>')
nkeymap('tt', '<C-^>') -- just to switch back and forth between files

-- file jumps (non-flexible file jumps)
nkeymap('<leader>cd', '<cmd>e ~/todo.txt<cr>') -- jump to todos
nkeymap('<leader>cn', '<cmd>e ~/.config/nvim/init.lua<cr>') -- jump to config
nkeymap('<leader>kb', '<cmd>e ~/.config/nvim/lua/keybind-config.lua<cr>') -- jump to config
nkeymap('<leader>ca', '<cmd>e /mnt/c/users/knara/AppData/roaming/alacritty/alacritty.yml<cr>')
nkeymap('<leader>cb', '<cmd>e ~/.bashrc<cr>') -- jump to config

nkeymap('<leader>n', '<cmd>noh<cr>')

nkeymap('<leader>tr', '<cmd>NvimTreeToggle<cr>')
nkeymap('<leader>tc', '<cmd>NvimTreeClose<cr>')
nkeymap('<leader>to', '<cmd>NvimTreeOpen<cr>')

-- nkeymap('<leader>wd', '<cmd>lcd %:p:h<cr>')

-- nkeymap('<C-`>', '<C-S>6') -- jump to config
-- keymap('n', '<C-`>', '<C-^>', {})

-- nkeymap('<leader>tp', '<cmd>set paste<cr>') -- toggle paste
