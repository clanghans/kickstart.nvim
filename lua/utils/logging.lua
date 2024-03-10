-- lua/utils/logging.lua
local M = {}

-- Utilize 'noice.nvim' for info level logs
function M.info(message, title)
  require("noice").notify(message, "info", { title = title or "Info", timeout = 3000 })
end

-- Utilize 'noice.nvim' for warning level logs
function M.warn(message, title)
  require("noice").notify(message, "warn", { title = title or "Warning", timeout = 5000 })
end

-- Utilize 'noice.nvim' for error level logs
function M.error(message, title)
  require("noice").notify(message, "error", { title = title or "Error", timeout = 7000 })
end

return M
