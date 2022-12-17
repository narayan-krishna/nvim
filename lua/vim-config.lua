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
  background = "dark",
  -- showcmd = false
}


for k, v in pairs(opts) do
  vim.opt[k] = v
end

vim.opt.listchars:append("trail:⋅")
vim.g.loaded_matchparen = false
vim.wo.wrap = false

vim.g.material_style = "deep ocean"
vim.g.gruvbox_material_background = 'hard'
vim.g.gruvbox_material_better_performance = 1

-- vim.cmd([[ :hi StatusLine guibg=bg ]]) -- otherwise
-- vim.cmd([[ :hi EndOfBuffer guifg=bg ]])

--BUG: won't work sadly
-- vim.cmd([[ :hi TelescopeSelection guibg=bg gui=bold ]])


require("gruvbox").setup({
  undercurl = true,
  underline = true,
  bold = true,
  italic = true,
  strikethrough = true,
  invert_selection = false,
  invert_signs = false,
  invert_tabline = false,
  invert_intend_guides = false,
  inverse = true, -- invert background for search, diffs, statuslines and errors
  contrast = "hard", -- can be "hard", "soft" or empty string
  palette_overrides = {},
  overrides = {},
  dim_inactive = false,
  transparent_mode = false,
})

require('material').setup({
  lualine_style = 'stealth'
})

require('onedark').setup {
  style = 'warmer'
}

vim.fn.execute('colorscheme gruvbox-material')
