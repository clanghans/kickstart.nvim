-- permalink.lua
local permalink = {}

local log = require 'utils.logging'

function permalink.remotePermalink()
  local file_name = vim.api.nvim_buf_get_name(0)
  local cursor_pos = vim.api.nvim_win_get_cursor(0)
  local line_length = string.len(vim.api.nvim_get_current_line()) + 1

  local result = vim.fn.system('repo-remote-permalink ' .. file_name .. ' ' .. cursor_pos[1] .. ' ' .. line_length)

  log.info(result, 'permalink')
  vim.fn.setreg('+', result)
end

return permalink
