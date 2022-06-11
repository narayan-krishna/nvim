-- STATUSLINE
-- local custom_molokai = require'lualine.themes.molokai'

-- Change the background of lualine_c section for normal mode
-- custom_molokai.normal.b.fg = '#f8f8f2'
--
local function window()
  return vim.api.nvim_win_get_number(0)
end


require('lualine').setup {
  options = {
    theme = 'auto',
    component_separators = { left = '|', right = '|'},
    section_separators = { },
  },
  sections = {
    lualine_a = { window, 'mode'},
    lualine_b = {'branch', 'diff'},
    -- lualine_c = {'filename', 'diagnostics'},
    lualine_c = {'filename', 'diagnostics'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
  }
}
