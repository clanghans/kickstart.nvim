-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- [[ Setting options ]]
require 'options'
-- [[ Basic Keymaps ]]
require 'keymaps'
-- [[ Basic Autocommands ]]
require 'autocmds'
-- [[ User commands ]]
require 'commands'

require 'lazy-plugins'
