-- statusline.lua
-- ctermbg thingy is still wonky, please use this in terminal
-- that support xterm-256color or  terminal like kitty and
-- alacritty for better performance otherwise, change the
-- value or disable this completely! --> lua/core/module.lua

-- bg        = '#202020';
  -- fg        = '#bbc2cf';
  -- black     = '#282828';
  -- grey      = '#5C6773';
  -- white     = '#CCCCCC';
  -- scarlet   = '#F07178';
  -- red       = '#B53032';
  -- green     = '#A2B342';
  -- blue      = '#4CA0D1';
  -- yellow    = '#E6B450';
  -- orange    = '#FF8F40';
  -- violet    = '#5E5E9C';
  -- cyan      = '#95E6CB';
  -- darkblue  = '#101521';
  -- magenta   = '#DB9AD0';
  -- skyblue   = '#7DAEA3';

vim.cmd([[
  au WinEnter,BufWinEnter,FileType,ColorScheme,SessionLoadPost * hi User1 cterm=None gui=None ctermfg=008 guifg=#303030 guibg=#B8CC52 " FG BLACK  BG GREEN
  au WinEnter,BufWinEnter,FileType,ColorScheme,SessionLoadPost * hi User2 cterm=None gui=None ctermfg=007 guifg=#5E5E9C guibg=#B8CC52 " FG VIOLET BG GREEN
  au WinEnter,BufWinEnter,FileType,ColorScheme,SessionLoadPost * hi User3 cterm=None gui=None ctermfg=008 guifg=#B8CC52 guibg=#303030 " FG GREEN BG DARK
  au WinEnter,BufWinEnter,FileType,ColorScheme,SessionLoadPost * hi User4 cterm=None gui=None ctermfg=008 guifg=#5E5E9C guibg=#303030 " FG VIOLET BG DARK
  au WinEnter,BufWinEnter,FileType,ColorScheme,SessionLoadPost * hi User5 cterm=None gui=None ctermfg=008 guifg=#DDDDDD guibg=#303030 " BG DARK
  au WinEnter,BufWinEnter,FileType,ColorScheme,SessionLoadPost * hi User7 cterm=None gui=None ctermfg=008 guifg=bgcolor
  au WinEnter,BufWinEnter,FileType,ColorScheme,SessionLoadPost * hi User8 cterm=None gui=None ctermfg=008 guifg=bgcolor
  au WinEnter,BufWinEnter,FileType,ColorScheme,SessionLoadPost * hi User9 cterm=None gui=None ctermfg=007 guifg=#121212 guibg=#121212 " STATUSLINE BGCOLOR

  set statusline=
     "- LEFT SIDE ----------------------------------"
      set statusline +=%1*\ %*      " space
      set statusline +=%1*         " logo
      set statusline +=%1*\ %*      " space
     "set statusline +=%2*%n        " buffer number
     "set statusline +=%1*\ %*      " space
     "----------------------------------------------"
     "- file name ----------------------------------"
      set statusline +=%3*\ %*      " space
      set statusline +=%3*[         " chevron left
      set statusline +=%3*\ %*      " space
      set statusline +=%3*%f        " file name
      set statusline +=%3*\ %*      " space
      set statusline +=%3*]         " chevron right
      set statusline +=\ %*         " space
     "----------------------------------------------"
     "- flags --------------------------------------"
      set statusline +=%3*%m        " modified is %m
      set statusline +=%3*%r        " read-only is %r
      set statusline +=%9*\ %*      " space
     "----------------------------------------------"


     "- RIGHT SIDE ---------------------------------"
      set statusline +=%=           " move to the right is %=
      set statusline +=%5*\ %*      " space is \ %*
      set statusline +=%5*[%l,%c]   " line,column number
     "----------------------------------------------"
     "- separator  ---------------------------------"
      set statusline +=%5*\ %*      " space is \ %*
      set statusline +=%5*::        " separator
      set statusline +=%5*\ %*      " space is \ %*
     "----------------------------------------------"
     "- file type  ---------------------------------"
      set statusline +=%5*[%Y]      " file type is %Y
     "----------------------------------------------"
     "- separator  ---------------------------------"
      set statusline +=%5*\ %*      " space
      set statusline +=%5*::        " separator
      set statusline +=%5*\ %*      " space
     "----------------------------------------------"
     "- percentages  -------------------------------"
      set statusline +=%1*\ %*      " space
      set statusline +=%1*%P        " percentages
      set statusline +=%1*\ %*      " space
     "----------------------------------------------"
]])
