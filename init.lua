-- user config
require 'user.keymaps'
require 'user.basic'

-- 插件
require 'plugins.packer'
require 'plugins.nvim-tree'
require 'plugins.bufferline'

-- 选择主题
vim.cmd [[colorscheme zephyr]]

-- lsp
require 'plugins.lsp'
