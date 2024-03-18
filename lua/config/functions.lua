function remotePermalink()
  -- Get the current buffer's file name
  local file_name = vim.api.nvim_buf_get_name(0)
  -- Get the current cursor position - remember indexed from 1
  local cursor_pos = vim.api.nvim_win_get_cursor(0)
  -- Calculate the length of the current line
  local line_length = string.len(vim.api.nvim_get_current_line()) + 1

  -- call python script to get the permalink
  local result = vim.fn.system("repo-remote-permalink " .. file_name .. " " .. cursor_pos[1] .. " " .. line_length)

  vim.notify(result)
  vim.fn.setreg("+", result)
end

vim.api.nvim_create_user_command("RemotePermalink", "lua remotePermalink()", {})
