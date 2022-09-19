# Argument Text Object
Arguments is also text-objects now!

This plugin provides a text-object `a`(argument).
- `via`, `vaa` - select in/an arg
- `dia`, `daa` - delete in/an arg
- `cia`, `caa` - change in/an arg
- `yia`, `yaa` - yield (copy) in/an arg
- `]a`, `[a` - jump to next/prev arg

What this plugin does is more than simply typing `F,dt,`,
because it recognizes the inclusion relationship of parentheses.


## Examples
Here `I` denotes cursor position.

| Explanation           | Text before      | Input                                  | Text after        |
|-----------------------|------------------|----------------------------------------|-------------------|
| Delete an argument    | `foo(baIr, baz)` | press `daa`                            | `foo(Ibaz)`       |
| Delete in argument    | `foo(baIr, baz)` | press `dia`                            | `foo(I, baz)`     |
| Change in argument    | `foo(baIr, baz)` | press `cia`, type `abc`, press `<esc>` | `foo(abcI, baz)`  |
| Select in argument    | `foo(baIr, baz)` | press `via`                            | `foo(IbarI, baz)` |
| Jump to next argument | `foo(baIr, baz)` | press `]a`                             | `foo(bar, Ibaz)`  |


## Ideas
- shift args (`<a` - move current arg to left, `>a` - move current arg to right)


## Alternatives
- [PeterRincker/vim-argumentative](https://github.com/PeterRincker/vim-argumentative) - argument text object, move cursor between args, shift args to left/right
- [hgiesel/vim-motion-sickness](https://github.com/hgiesel/vim-motion-sickness#field-text-objects) - contains motions for arguments in specified brackets
- [AndrewRadev/sideways.vim](https://github.com/AndrewRadev/sideways.vim) - shift arg to left/right
- [machakann/vim-swap](https://github.com/machakann/vim-swap) - shift arg to left/right, arg swap mode (ala sub-mode)
- [mizlan/iswap.nvim](https://github.com/mizlan/iswap.nvim) - interactive swap args mode
- [vim-scripts/swap-parameters](https://github.com/vim-scripts/swap-parameters) - swap args

