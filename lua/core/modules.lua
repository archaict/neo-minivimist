
local config = require('core')

if config.modules.tpope then
vim.cmd([[
  source ~/.config/nvim/lua/modules/base/abolish.vim
  source ~/.config/nvim/lua/modules/base/commentary.vim
  source ~/.config/nvim/lua/modules/base/endwise.vim
  source ~/.config/nvim/lua/modules/base/speeddating.vim
  source ~/.config/nvim/lua/modules/base/surround.vim
  source ~/.config/nvim/lua/modules/base/repeat.vim
]])
end

if config.modules.netrw then
  require('modules.base.netrw')
  require('modules.base.statusline')
end
