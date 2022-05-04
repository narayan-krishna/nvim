-- utilities

local A = vim.api
Utils = {}

-- get rid of weird extra lines from wsl copy/paste
function Utils.delete_extra_lines()
  local m = A.nvim_buf_get_mark
  local sln, eln = m(0, '<'), m(0, '>')

  local srow, erow = sln[1], eln[1]
  local lines = A.nvim_buf_get_lines(0, srow - 1, erow, false)

  local invalid = 1

  for i, line in ipairs(lines) do
    if i % 2 == invalid then
      A.nvim_buf_set_lines(0, i-1 + srow, i + srow, false, {}) -- delete the current line if it's invalid
    end

    if invalid == 1 then
      invalid = 0
    else
      invalid = 1
    end
  end

return lines
end
