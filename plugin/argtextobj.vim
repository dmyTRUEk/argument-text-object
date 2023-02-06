" check vim version and some other magick:
if exists('argtextobj_loaded') || &cp || version < 700
    finish
endif
let argtextobj_loaded = 1

if !exists('g:argtextobj_search_limit')
    let g:argtextobj_search_limit = 1000
endif


command! ArgtextobjXaa  call argtextobj#VisualSelectAnArg()
command! ArgtextobjNdaa call argtextobj#DeleteAnArg()
command! ArgtextobjNcaa call argtextobj#ChangeAnArg()
command! ArgtextobjNyaa call argtextobj#YankAnArg()

command! ArgtextobjXia  call argtextobj#VisualSelectInArg()
command! ArgtextobjNdia call argtextobj#DeleteInArg()
command! ArgtextobjNcia call argtextobj#ChangeInArg()
command! ArgtextobjNyia call argtextobj#YankInArg()

command! ArgtextobjNna call argtextobj#NormalMoveToNextArg()
command! ArgtextobjNpa call argtextobj#NormalMoveToPrevArg()


if !exists('g:argtextobj_disable_remaps') || g:argtextobj_disable_remaps == 0
    " keybinds:
    xnoremap  aa :<C-U>ArgtextobjXaa<CR>
    nnoremap daa :<C-U>ArgtextobjNdaa<CR>
    nnoremap caa :<C-U>ArgtextobjNcaa<CR>
    nnoremap yaa :<C-U>ArgtextobjNyaa<CR>

    xnoremap  ia :<C-U>ArgtextobjXia<CR>
    nnoremap dia :<C-U>ArgtextobjNdia<CR>
    nnoremap cia :<C-U>ArgtextobjNcia<CR>
    nnoremap yia :<C-U>ArgtextobjNyia<CR>

    " TODO?: add <silent>
    nnoremap  [a :<C-U>ArgtextobjNpa<CR>
    nnoremap  ]a :<C-U>ArgtextobjNna<CR>
endif

