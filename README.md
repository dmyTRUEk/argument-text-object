# Argument Text Object
Vim plugin for working with function arguments.

This plugin (kinda) provides a text-object `a`(argument).
- `via`, `vaa` - select in/an arg
- `dia`, `daa` - delete in/an arg
- `cia`, `caa` - change in/an arg
- `yia`, `yaa` - yield (copy) in/an arg
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


## Todo
- make `ia`, `aa` really text-object


## Ideas
- shift args (`<a` - move current arg to left, `>a` - move current arg to right)


## Alternatives
- [PeterRincker/vim-argumentative](https://github.com/PeterRincker/vim-argumentative) - argument text object, move cursor between args, shift args to left/right
- [hgiesel/vim-motion-sickness](https://github.com/hgiesel/vim-motion-sickness#field-text-objects) - contains motions for arguments in specified brackets
- [AndrewRadev/sideways.vim](https://github.com/AndrewRadev/sideways.vim) - shift arg to left/right
- [machakann/vim-swap](https://github.com/machakann/vim-swap) - shift arg to left/right, arg swap mode (ala sub-mode)
- [mizlan/iswap.nvim](https://github.com/mizlan/iswap.nvim) - interactive swap args mode
- [vim-scripts/swap-parameters](https://github.com/vim-scripts/swap-parameters) - swap args

