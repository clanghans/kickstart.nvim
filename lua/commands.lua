local permalink = require 'utils.permalink'
vim.api.nvim_create_user_command('RemotePermalink', permalink.remotePermalink, {})
