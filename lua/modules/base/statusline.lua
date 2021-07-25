-- statusline.lua
-- ctermbg thingy is still wonky, please use this in terminal
-- that support xterm-256color or  terminal like kitty and
-- alacritty for better performance otherwise, change the
-- value or disable this completely! --> lua/core/module.lua

  -- bg        = '#202020'; 016
  -- fg        = '#bbc2cf'; 146
  -- black     = '#282828';
  -- grey      = '#5C6773'; 060
  -- white     = '#CCCCCC'; 188
  -- scarlet   = '#F07178'; 204
  -- red       = '#B53032'; 124
  -- green     = '#A2B342'; 142
  -- blue      = '#4CA0D1'; 074
  -- yellow    = '#E6B450'; 179
  -- orange    = '#FF8F40'; 208
  -- violet    = '#5E5E9C'; 061
  -- cyan      = '#95E6CB'; 116
  -- darkblue  = '#101521'; 016
  -- magenta   = '#DB9AD0'; 176
  -- skyblue   = '#7DAEA3'; 189

--   darker1   = "#0A0E14";
--   darker2   = "#0D1016";
--   darker3   = "#273747";
--   bg        = '#202020';
--   fg        = '#bbc2cf';
--   black     = '#282828';
--   d_grey    = "#3D424D";
--   grey      = '#5C6773';
--   grey1     = "#626A73";
--   l_grey    = "#B3B1AD";
--   white     = '#CCCCCC';
--   l_red     = '#F07178';
--   red       = '#B53032';
--   green     = '#A2B342';
--   l_green   = "#C2D94C";
--   blue      = "#39BAE6";
--   d_blue    = '#4CA0D1';
--   yellow    = '#E6B450';
--   lemon     = "#FFEE99";
--   orange    = '#FF8F40';
--   violet    = '#5E5E9C';
--   cyan      = '#95E6CB';
--   darkblue  = '#101521';
--   magenta   = '#DB9AD0';
--   skyblue   = '#7DAEA3';

vim.cmd([[

let g:currentmode = { 'n': '  NORMAL ', 'no': '  N·OP·PEND', 'v': '  VISUAL', 'V': '  V·LINE ', "\<C-V>": '  V·BLOCK', 's': '  SELECT ', 'S': '  S·LINE ', '�': '  S·BLOCK', 'i': '  INSERT ', 'R': '  REPLACE', 'Rv': '  V·REPLACE', 'c': '  COMMAND', 'cv': '  VIM EX', 'ce': '  EX     ', 'r': '  PROMPT', 'rm': '  MORE   ', 'r?': '  CONFIRM', '!': '  SHELL  ', 't': '  TERMINAL'}
let g:modegroups = { 'n': 'NRM', 'no': 'NRM', 'v': 'VIS', 'V': 'VIS', "\<C-V>": 'VIS', 's': 'OTH', 'S': 'OTH', '�': 'OTH', 'i': 'INS', 'R': 'INS', 'Rv': 'INS', 'c': 'OTH', 'cv': 'OTH', 'ce': 'OTH', 'r': 'OTH', 'rm': 'OTH', 'r?': 'OTH', '!': 'OTH', 't': 'OTH'}

function! Modetheme(group)
  if g:modegroups[mode()]==a:group
    let g:colthm = g:currentmode[mode()]
    let g:lineModes = g:colthm
    return "  ".g:lineModes." "
  else
    return ''
  endif
endfunction

  set statusline=
     "- LEFT SIDE ----------------------------------"

     "set statusline +=%1*\ %*      " space
     "set statusline +=%1*         " logo
      set statusline+=%4*%{(Modetheme('NRM'))}
      set statusline+=%5*%{(Modetheme('VIS'))}
      set statusline+=%6*%{(Modetheme('INS'))}
      set statusline+=%7*%{(Modetheme('OTH'))}

     "----------------------------------------------"
     "- file name ----------------------------------"
      set statusline +=%2*\ %*      " space
      set statusline +=%2*[         " chevron left
      set statusline +=%2*\ %*      " space
      set statusline +=%2*%n        " buffer
      set statusline +=%2*\ %*      " space
      set statusline +=%2*\|        " separator
      set statusline +=%2*\ %*      " space
      set statusline +=%2*%f        " file name
      set statusline +=%2*\ %*      " space
      set statusline +=%2*]         " chevron right
      set statusline +=\ %*         " space
     "----------------------------------------------"
     "- flags --------------------------------------"
      set statusline +=%2*%m        " modified is %m
      set statusline +=%2*%r        " read-only is %r
      set statusline +=%9*\ %*      " space
     "----------------------------------------------"


     "- RIGHT SIDE ---------------------------------"
      set statusline +=%=           " move to the right is %=
      set statusline +=%3*\ %*      " space is \ %*
      set statusline +=%3*[%l,%c]   " line,column number
     "----------------------------------------------"
     "- separator  ---------------------------------"
      set statusline +=%3*\ %*      " space is \ %*
      set statusline +=%3*::        " separator
      set statusline +=%3*\ %*      " space is \ %*
     "----------------------------------------------"
     "- file type  ---------------------------------"
      set statusline +=%3*[%Y]      " file type is %Y
     "----------------------------------------------"
     "- separator  ---------------------------------"
      set statusline +=%3*\ %*      " space
      set statusline +=%3*::        " separator
      set statusline +=%3*\ %*      " space
     "----------------------------------------------"
     "- percentages  -------------------------------"
      set statusline +=%1*\ %*      " space
      set statusline +=%1*%P        " percentages
      set statusline +=%1*\ %*      " space
     "----------------------------------------------"


  au WinEnter,BufWinEnter,FileType,ColorScheme,SessionLoadPost * hi User1  cterm=None gui=None ctermfg=008 guifg=#303030 guibg=#B8CC52 " FG BLACK  BG GREEN
  au WinEnter,BufWinEnter,FileType,ColorScheme,SessionLoadPost * hi User2  cterm=None gui=None ctermfg=008 guifg=#B8CC52 guibg=#303030 " FG GREEN  BG DARK
  au WinEnter,BufWinEnter,FileType,ColorScheme,SessionLoadPost * hi User3  cterm=None gui=None ctermfg=008 guifg=#AAAAAA guibg=#303030 " FG WHITE  BG DARK

  au WinEnter,BufWinEnter,FileType,ColorScheme,SessionLoadPost * hi User4  cterm=None gui=None ctermfg=008 guifg=#303030 guibg=#B8CC52 " NORMAL | GREEN
  au WinEnter,BufWinEnter,FileType,ColorScheme,SessionLoadPost * hi User5  cterm=None gui=None ctermfg=008 guifg=#303030 guibg=#39BAE6 " VISUAL | VIOLET
  au WinEnter,BufWinEnter,FileType,ColorScheme,SessionLoadPost * hi User6  cterm=None gui=None ctermfg=008 guifg=#DDDDDD guibg=#B53032 " INSERT | ORANGE
  au WinEnter,BufWinEnter,FileType,ColorScheme,SessionLoadPost * hi User7  cterm=None gui=None ctermfg=007 guifg=#303030 guibg=#E6B450 " OTHERS | YELLOW

  au WinEnter,BufWinEnter,FileType,ColorScheme,SessionLoadPost * hi User8  cterm=None gui=None ctermfg=008 guifg=#303030 guibg=#FF8F40 " ACCENT | ORANGE
  au WinEnter,BufWinEnter,FileType,ColorScheme,SessionLoadPost * hi User9  cterm=None gui=None ctermfg=007 guifg=#121212 guibg=#121212 " STATUSLINE BGCOLOR

]])
