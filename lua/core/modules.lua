
local config = require('core')

if config.modules.netrw then
  require('modules.base.netrw')
  require('modules.base.statusline')
end
