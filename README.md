# Argument Text Object
Vim plugin for working with function arguments.

This plugin (kinda) provides a text-object `a`(argument).
- `via`, `vaa` - select in/an arg
- `dia`, `daa` - delete in/an arg
- `cia`, `caa` - change in/an arg
- `yia`, `yaa` - yank (copy) in/an arg
- `]a`, `[a` - jump to next/prev arg

This plugin does more than simply `f,dT,`,
because it recognizes the inclusion relationship of parentheses.


## Examples
Here `|` denotes cursor position.

| Explanation           | Text before       | Input                                  | Text after          |
|-----------------------|-------------------|----------------------------------------|---------------------|
| Delete an argument    | `foo(ba\|r, baz)` | press `daa`                            | `foo(\|baz)`        |
| Delete in argument    | `foo(ba\|r, baz)` | press `dia`                            | `foo(\|, baz)`      |
| Change in argument    | `foo(ba\|r, baz)` | press `cia`, type `abc`, press `<esc>` | `foo(abc\|, baz)`   |
| Select in argument    | `foo(ba\|r, baz)` | press `via`                            | `foo(\|bar\|, baz)` |
| Jump to next argument | `foo(ba\|r, baz)` | press `]a`                             | `foo(bar, \|baz)`   |


## Installation
Just enable it in your preferable plugin manager.

Using [vim-plug](https://github.com/junegunn/vim-plug):
```
Plug 'dmytruek/argument-text-object'
```

Using [packer](https://github.com/wbthomason/packer.nvim):
```
use 'dmytruek/argument-text-object'
```


## Configuration
### Change or disable keybinds:
If you don't like default keybinds, you can disable them:
```
let g:argtextobj_disable_remaps = 1
```

And set your own
(be sure not to map functions meant for visual mode to normal mode and vice versa):
```
xnoremap  aa :<C-U>ArgtextobjXaa<CR>
nnoremap daa :<C-U>ArgtextobjNdaa<CR>
nnoremap caa :<C-U>ArgtextobjNcaa<CR>
nnoremap yaa :<C-U>ArgtextobjNyaa<CR>

xnoremap  ia :<C-U>ArgtextobjXia<CR>
nnoremap dia :<C-U>ArgtextobjNdia<CR>
nnoremap cia :<C-U>ArgtextobjNcia<CR>
nnoremap yia :<C-U>ArgtextobjNyia<CR>

nnoremap  [a :<C-U>ArgtextobjNpa<CR>
nnoremap  ]a :<C-U>ArgtextobjNna<CR>
```

### Search limit:
Change search limit:
```
let g:argtextobj_search_limit = 1000
```


## Todo
- add options to disable certain brackets , e.g. triangle brackets (bc they are used as greater/less symbol) (and other?)
- select even when cursor is on bracket character
- select more if some selection already exists (`vaaaa` - select one more argument)
- select even more if all inside parentheses already selected
- make `[a` goto begin of prev arg, not end
- make `ia`, `aa` really text-object, not just binds
- ? make it a bit smarter, so that it works as expected even when any of `<`,`>`,`<=`,`>=` is in arg, e.g. `func(arg1, x < y, arg2)`

If you have some other suggestions, feel free to [open an issue](https://github.com/dmyTRUEk/argument-text-object/issues/new).

## Ideas
- shift args (`<a` - move current arg to left, `>a` - move current arg to right)


## Alternatives
- [PeterRincker/vim-argumentative](https://github.com/PeterRincker/vim-argumentative) - argument text object, move cursor between args, shift args to left/right
- [hgiesel/vim-motion-sickness](https://github.com/hgiesel/vim-motion-sickness#field-text-objects) - contains motions for arguments in specified brackets
- [AndrewRadev/sideways.vim](https://github.com/AndrewRadev/sideways.vim) - shift arg to left/right
- [machakann/vim-swap](https://github.com/machakann/vim-swap) - shift arg to left/right, arg swap mode (ala sub-mode)
- [mizlan/iswap.nvim](https://github.com/mizlan/iswap.nvim) - interactive swap args mode
- [vim-scripts/swap-parameters](https://github.com/vim-scripts/swap-parameters) - swap args

