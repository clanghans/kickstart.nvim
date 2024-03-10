local M = {}

local log = require 'utils.logging'

local enabled = true
function M.diagnostics()
  -- if this Neovim version supports checking if diagnostics are enabled
  -- then use that for the current state
  if vim.diagnostic.is_disabled then
    enabled = not vim.diagnostic.is_disabled()
  end
  enabled = not enabled

  if enabled then
    vim.diagnostic.enable()
    log.info('Enabled diagnostics', 'Diagnostics')
  else
    vim.diagnostic.disable()
    log.warn('Disabled diagnostics', 'Diagnostics')
  end
end

return M
