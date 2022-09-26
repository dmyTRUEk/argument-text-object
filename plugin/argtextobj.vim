" check vim version and some other magick:
if exists('argtextobj_loaded') || &cp || version < 700
    finish
endif
let argtextobj_loaded = 1

if !exists('g:argtextobj_search_limit')
    let g:argtextobj_search_limit = 1000
endif


" TODO: bind plugin's functions to better(?) names:
" TODO: what <C-U> exactly does and is it necessary here?
xnoremap <Plug>(argtextobj_x_aa)  :<C-U>call argtextobj#VisualSelectAnArg()<CR>
nnoremap <Plug>(argtextobj_n_daa) :<C-U>call argtextobj#DeleteAnArg()<CR>
nnoremap <Plug>(argtextobj_n_caa) :<C-U>call argtextobj#ChangeAnArg()<CR>
nnoremap <Plug>(argtextobj_n_yaa) :<C-U>call argtextobj#YankAnArg()<CR>

xnoremap <Plug>(argtextobj_x_ia)  :<C-U>call argtextobj#VisualSelectInArg()<CR>
nnoremap <Plug>(argtextobj_n_dia) :<C-U>call argtextobj#DeleteInArg()<CR>
nnoremap <Plug>(argtextobj_n_cia) :<C-U>call argtextobj#ChangeInArg()<CR>
nnoremap <Plug>(argtextobj_n_yia) :<C-U>call argtextobj#YankInArg()<CR>

nnoremap <Plug>(argtextobj_n_na)  :<C-U>call argtextobj#NormalMoveToNextArg()<CR>
nnoremap <Plug>(argtextobj_n_pa)  :<C-U>call argtextobj#NormalMoveToPrevArg()<CR>


if !exists('g:argtextobj_disable_remaps') || g:argtextobj_disable_remaps == 0
    " keybinds:
    xnoremap  aa <Plug>(argtextobj_x_aa)
    nnoremap daa <Plug>(argtextobj_n_daa)
    nnoremap caa <Plug>(argtextobj_n_caa)
    nnoremap yaa <Plug>(argtextobj_n_yaa)

    xnoremap  ia <Plug>(argtextobj_x_ia)
    nnoremap dia <Plug>(argtextobj_n_dia)
    nnoremap cia <Plug>(argtextobj_n_cia)
    nnoremap yia <Plug>(argtextobj_n_yia)

    " TODO: add <silent>
    nnoremap  [a <Plug>(argtextobj_n_pa)
    nnoremap  ]a <Plug>(argtextobj_n_na)
endif

