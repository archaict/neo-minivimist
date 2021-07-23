# NEO-MINIVIMIST

**Minimal and beautiful Neovim config!**

This is an opinionated config/dotfiles for neovim beginners. Since Neovim is
migrating most of its configuration bases to lua, you might also wanna see some
configurations that can be done with minimal plugins!

Configuration doesn't include plugins, you might want to install it using your
own plugin manager.

Inspired by projects like [doom-nvim](https://github.com/NTBBloodbath/doom-nvim)
(I'm going back and forth between emacs and nvim, and now this!?),
[LunarVim](https://github.com/ChristianChiarulli/LunarVim),
[nvim_like_me]( https://github.com/christopher-besch/nvim_like_me ). These
project has done much to help me with understanding how lua works, especially
their codebase. You might find some resemblance to these project, since those are
turned into a minimal neovim config (not super minimal, but okayish).

`Maxivimist` version will be published at later date once it completes.

## Installation

There are multiple folders for each, you might want to change
`neo-minivimist` to other `nvim` or you can link it, I choose the latter, since
it is easier to unlink it afterwards.

READ THIS FIRST!: please make backups before you do this!

``` bash
$ cp -r ~/.config/nvim ~/.config/.pre_neo-minivimist
$ git clone https://github.com/archaict/neo-minivimist ~/.config/neo-minivimist

# CHOOSE ONE BELOW!
# if you want to link it
$ ln -srf ~/.config/neo-minivimist ~/.config/nvim

# if you want to move it
$ rm -rf ~/.config/nvim
$ mv ~/.config/neo-minivimist ~/.config/nvim
```

To restore your vim configuration, you can use commands below:
```
$ rm ~/.config/nvim # to remove neo-minivimist
$ mv ~/.config/.pre_neo-minivimist ~/.config/nvim # to restore it
```

## Folder Structure

There are three core folders ( inspired by
[doom-nvim](https://github.com/NTBBloodbath/doom-nvim)! )
that resides inside `lua` directory.

- **core** consists of base configuration
- **modules** where the core plugins resides
- **utils** the utility command, taken from
[nvim_like_me]( https://github.com/christopher-besch/nvim_like_me )

```
neo-minivimist/
| .git/
| colors/
| lua/
| | core/
| | | binds.lua
| | | config.lua
| | | configuration.lua
| | | functions.lua
| | | highlights.lua
| | | modules.lua
| | modules/
| | | base/
| | | | abolish.vim
| | | | commentary.vim
| | | | endwise.vim
| | | | eunuch.vim
| | | | flagship.vim
| | | | netrw.lua
| | | | repeat.vim
| | | | speeddating.vim
| | | | surround.vim
| | utils/
| | | util.lua
| | core.lua
| README.md
| init.lua
```
As you can see, there are still much room for improvements!

NOTE: **Base** are taken from [tpope](https://github.com/tpope) plugins,
not much else as you can see, although there is a wild `netrw.lua` threw
inside this directory!

Enjoy!

Thanks to:
- [LunarVim](https://github.com/ChristianChiarulli/LunarVim)
- [doom-nvim](https://github.com/NTBBloodbath/doom-nvim)
- [nvim_like_me]( https://github.com/christopher-besch/nvim_like_me )
- [tpope](https://github.com/tpope)
- [ayu-themes/ayu](https://github.com/ayu-theme/ayu-vim)
