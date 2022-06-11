-- this is my lua config, if you dont like it, sucks

local opts = {
  cmdheight = 1,
  tabstop = 2,
  shiftwidth = 2,
  softtabstop = 2,
  expandtab = true, -- tab to spaces
  smartindent = true,
  scrolloff = 4,
  sidescrolloff = 8,
  splitbelow = true,
  splitright = true,
  swapfile = false,
  undofile = true,
  relativenumber = true,
  number = true,
  termguicolors = true,
  list = true,
  hlsearch = true,
  cursorline = false,
  showmode =  false,
  ruler = true,
  -- showcmd = false
}

for k, v in pairs(opts) do
  vim.opt[k] = v
end

vim.opt.listchars:append("trail:⋅")
vim.g.loaded_matchparen = false
vim.wo.wrap = false

vim.g.material_style = "darker"

vim.g.gruvbox_material_background = 'hard'
vim.g.gruvbox_material_better_performance = 1

-- vim.g.rehash256 = 1
vim.cmd([[ colorscheme dracula ]])
-- vim.cmd([[ :hi StatusLine guibg=bg ]]) -- otherwise
vim.cmd([[ :hi EndOfBuffer guifg=bg ]])

--BUG: won't work sadly
-- vim.cmd([[ :hi TelescopeSelection guibg=bg gui=bold ]])
--
require('material').setup({
  lualine_style = 'stealth'
})
require('onedark').setup {
  style = 'warmer'
}
