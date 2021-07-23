-- binds.lua --- [ setting up local variables ] ---
-- sane keybindings for your writing conveniences
local cmd = vim.cmd         -- execute Vim commands
local opts = { noremap = true }
-- requires ---------------------------------------
---------------------------------------------------
vim.g.mapleader  = ' '

local K = {}

function K.autopairs()
  cmd 'inoremap " ""<left>'
  cmd "inoremap ' ''<left>"
  cmd 'inoremap ( ()<left>'
  cmd 'inoremap [ []<left>'
  cmd 'inoremap { {}<left>'
  cmd 'inoremap {<CR> {<CR>}<ESC>O'
  cmd 'inoremap {;<CR> {<CR>};<ESC>O'
end

function K.essentials()
  cmd "nnoremap ; :"
  cmd "nnoremap : ;"
  map ( 'n', 'Q','q' )
  map ( 'n', 'q','<Nop>' )
  -- No Highlights
  map ( 'n' ,'<CR>',':noh<CR>' )
  -- Escape Sequence
  map ( 'i', 'jk'   , '<ESC>' )
  map ( 'i', 'JK'   , '<ESC>' )
  map ( 'i', '<C-U>', '<C-G>u<C-U>')
  -- Find
  map ( 'n', '<C-f>','/' , { noremap = false })
  -- Save Me
  map ( 'n', '<C-s>', ':w!<cr>' )
  map ( 'v', '<C-s>', ':w!<cr>' )
  map ( 'i', '<C-s>', ':w!<cr>' )
  map ( 'n', '<Insert>', ':startinsert<CR>' )
  map ( 'i', '<Insert>', '<C-o>:stopinsert<CR>' )
  map ( 'n', '<leader>tl', ':call ChangeLineNumbering()<CR>' )
end

function K.movement()
  -- Movement
  map ( 'n', 'j', 'gj' )
  map ( 'v', 'j', 'gj' )
  map ( 'n', 'k', 'gk' )
  map ( 'v', 'K', 'gk' )

  map ( 'n', 'H', '^' )
  map ( 'n', 'J', '}' )
  map ( 'n', 'K', '{' )
  map ( 'n', 'L', '$' )

  map ( 'v', 'H', '^' )
  map ( 'v', 'L', '$' )

  map ( 'n', '<c-z>', '<NOP>' )
  map ( 'i', '<c-z>', '<NOP>' )
  map ( 'v', '<c-z>', '<NOP>' )

  map ( 'i', '<c-j>', '<c-n>' )
  map ( 'i', '<c-k>', '<C-p>' )

  map ( 'n', '<C-j>', '<C-D>' )
  map ( 'n', '<C-k>', '<C-U>' )

  -- map ( 'n', '<A-j>', '<C-D>' )
  -- map ( 'n', '<A-k>', '<C-U>' )

end

function K.shifting()

  -- Indentation
  map ( 'v', '<', ' <gv' )
  map ( 'v', '>', ' >gv' )

  -- Move line up and down
  map ( 'n' , '<A-down>' , ":m .+1<CR>==" )
  map ( 'n' , '<A-up>'   , ":m .-2<CR>==" )
  map ( 'v' , '<A-down>' , ":m '>+1<CR>gv=gv" )
  map ( 'v' , '<A-up>'   , ":m '<-2<CR>gv=gv" )
  map ( 'i' , '<A-down>' , "<Esc>:m .+1<CR>==gi" )
  map ( 'i' , '<A-up>'   , "<Esc>:m .-2<CR>==gi" )
end

function K.tabs()

  map ( 'n', '<A-left>' , ':tabprevious<CR>' )
  map ( 'n', '<A-right>' , ':tabnext<CR>' )

  map ( 'n', '<c-t>' , ':tabnew<CR>' )
  map ( 'n', '<c-q>' , ':tabclose<CR>' )
  map ( 'n', '<A-1>' , ':tabfirst<CR>' )
  map ( 'n', '<A-2>' , '2gt' )
  map ( 'n', '<A-3>' , '3gt' )
  map ( 'n', '<A-4>' , '4gt' )
  map ( 'n', '<A-5>' , '5gt' )
  map ( 'n', '<A-6>' , '6gt' )
  map ( 'n', '<A-7>' , '7gt' )
  map ( 'n', '<A-8>' , '8gt' )
  map ( 'n', '<A-9>' , ":tablast<CR>"  )

  map ( 't', '<A-1>' , '<C-\\><C-n>:tabfirst<CR>' )
  map ( 't', '<A-2>' , '<C-\\><C-n>2gt' )
  map ( 't', '<A-3>' , '<C-\\><C-n>3gt' )
  map ( 't', '<A-4>' , '<C-\\><C-n>4gt' )
  map ( 't', '<A-5>' , '<C-\\><C-n>5gt' )
  map ( 't', '<A-6>' , '<C-\\><C-n>6gt' )
  map ( 't', '<A-7>' , '<C-\\><C-n>7gt' )
  map ( 't', '<A-8>' , '<C-\\><C-n>8gt' )
  map ( 't', '<A-9>' , '<C-\\><C-n>:tablast<CR>' )
  map ( 't', '<C-Esc>', '<C-\\><C-n>' )

  map ( 'i', '<A-1>' , '<C-\\><C-n>:tabfirst<CR>' )
  map ( 'i', '<A-2>' , '<C-\\><C-n>2gt' )
  map ( 'i', '<A-3>' , '<C-\\><C-n>3gt' )
  map ( 'i', '<A-4>' , '<C-\\><C-n>4gt' )
  map ( 'i', '<A-5>' , '<C-\\><C-n>5gt' )
  map ( 'i', '<A-6>' , '<C-\\><C-n>6gt' )
  map ( 'i', '<A-7>' , '<C-\\><C-n>7gt' )
  map ( 'i', '<A-8>' , '<C-\\><C-n>8gt' )
  map ( 'i', '<A-9>' , '<C-\\><C-n>:tablast<CR>' )
  map ( 'i', '<C-Esc>', '<C-\\><C-n>' )
end

function K.buffers()
  map ( 'n', '<BS>'       , ':bprevious<cr>' )
  map ( 'n', '<C-l>'      , ':bnext<cr>' )
  map ( 'n', '<C-e><C-n>' , ':bnext<cr>' )
  map ( 'n', '<C-e><C-p>' , ':bprevious<cr>' )
  map ( 'n', '<leader>bd' , ':silent! bp|bd#<cr>')
  map ( 'n', '<leader>bk' , ':silent bd!<CR>' , opts )
  -- Buffer navgation
  map ( 'n', '<leader>jj' , ':silent! bnext<cr>')
  map ( 'n', '<leader>kk' , ':silent! bprev<cr>')
end

function K.terminal()
  -- Open Terminal in new tab
  map ( 'n' ,"<C-o>" , ":tabnew<CR>:set nonumber<CR>:term<CR>i" )

  -- Terminal Toggle
  map ( 'n', '<leader>oo' , ':call TermToggle(12)<CR>'  )
  map ( 'n', '<leader>ot' , ':call TermToggle(12)<CR>'  )
  map ( 'n', '<C-e><C-e>' , ':call TermToggle(12)<CR>'  )
  map ( 'n', '<C-e><C-o>' , '<C-\\><C-n>:e '  )

  map ( 'n', '<C-e><C-w>' , '<C-\\><C-n><C-w><C-w>'  )
  map ( 'n', '<C-e><C-q>' , ':silent! bd!<cr>'  )
  map ( 'n', '<C-q><C-q>' , ':silent! bd!<cr>'  )
  map ( 'n', '<C-q>'      , '<NOP>'  )

  map ( 't', '<C-e><C-e>' , '<C-\\><C-n>:call TermToggle(12)<CR>'  )

  map ( 't', '<C-e><C-q>' , '<C-\\><C-n>:silent! bd!<Esc>'  )
  map ( 't', '<C-e><C-o>' , '<C-\\><C-n>:e '  )
  map ( 't', '<C-x>'      , '<C-\\><C-n>'  )
  map ( 't', '<C-e><C-w>' , '<C-\\><C-n><C-w><C-w>'  )
  map ( 't', '<C-q>'      , '<C-\\><C-n>:silent! bd!<CR>'  )

end

function K.window()
  -- Horizontal Resize
  map ( 'n', '<A-+>' ,'resize -5<CR>' )
  map ( 'n', '<A-_>' ,'resize +5<CR>' )

  -- Vertical Resize
  map ( 'n', '<A-=>',':vertical resize -5<CR>' )
  map ( 'n', '<A-->',':vertical resize +5<CR>' )

  -- Window movement
  map ( 'n', '<leader>wh' , '<C-w><C-h>'  )
  map ( 'n', '<leader>wj' , '<C-w><C-j>'  )
  map ( 'n', '<leader>wk' , '<C-w><C-k>'  )
  map ( 'n', '<leader>wl' , '<C-w><C-l>'  )
  map ( 'n', '<leader>wq' , '<C-w><C-q>'  )
  map ( 'n', '<leader>ww' , '<C-w><C-w>'  )
  map ( 'n', '<leader>wr' , '<C-w><C-r>'  )

  map ( 'n', '<leader>wa' , ':wqa!<CR><C-w><C-q>'  )
  map ( 'n', '<leader>ws' , ':split<CR><C-w><C-w>'  )
  map ( 'n', '<leader>wv' , ':vsplit<CR><C-w><C-w>'  )

  map ( 'n', '<leader>wS' , '<C-W>t<C-w>K'  )
  map ( 'n', '<leader>wV' , '<C-W>t<C-w>H'  )

  map ( 'n', '<leader>wK' , ':resize +5<CR>'  )
  map ( 'n', '<leader>wJ' , ':resize -5<CR>'  )
  map ( 'n', '<leader>wH' , ':vertical resize -5<CR>'  )
  map ( 'n', '<leader>wL' , ':vertical resize +5<CR>'  )
end

function K.quit()
  -- Quitting
  map ( 'n', '<leader>qq' , ':qa!<CR>'  )
  map ( 'n', '<leader>qa' , ':qa!<CR>'  )
  map ( 'n', '<leader>qw' , ':wq!<CR>'  )
  map ( 'n', '<leader>qd' , ':wqa!<CR>' )
end

function K.netrw()
  map ( 'n', '<space>dd' , ':Lexplore<CR>' , opts )
end

for _, keymap in pairs(Keymaps) do K[keymap]() end
