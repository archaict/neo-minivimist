# Core Configuration

You can change your configuration in `core.lua`, you might also want to
change default behaviour there. `core.lua` conists of 3 structure (for now)
you can enable or disable by either writing booleans [ true / false ] or
using integers and strings. It is preferable to read the core config first!

## Core

This is where most config resides, it is directly tied with `functions.lua`
in `core/` folder. If there is some configuration that are not precise, or
not doing things as they're supposed to, please report it to me through
discussion page.

This config is categorized into multiple section, you can read it up in
`core.lua`, if you're in a hurry, just change `core-example.lua` file to
`core.lua`, most of the default config are there with minimum documentation.

For configuration file, if you don't want to change it in `core.lua` or you
want more power, you can delete core section and change
`require('core.config')` to `require('core.configuration')`, beware if some
stuff is broken, you have to change it by hand.

## Keymaps

If you notice that this part is a little bit different, it's because it is
different from how you write stuff in core section, this section can be
disabled easily by commenting out each line. All config that resides here
are tied to `core/binds.lua` file, you might want to change things there
if you want more power.

## Modules

This is where modules resides, things that are included here are
[tpope](https://github.com/tpope) plugins and some stuff that are
tied originally to neovim itself, like netrw. I haven't found any
others that are tied here.

### TODO: Add more modules

Since this configuration is configured to be modular, things should
be modularize into small files, although it might seem much, it is
actually still tied inside neovim itself wihtout any plugins.

Don't know how to do these or in-progress:
- `[ ]` Add FZF like capabilities, haven't tried, but will be implemented
- `[ ]` Better StatusLine, it is written in pure vimscript in `statusline.lua`
will be changed at later date.
- `[ ]` Add highlights for common filetype, colors provided by
[ayu-themes/ayu](https://github.com/ayu-theme/ayu-vim) is enough, but
as you may already seen when using this configuration, some area still
need to be improved, this will be done at later date.

That is for now, anything else will be added at later date. Enjoy!

