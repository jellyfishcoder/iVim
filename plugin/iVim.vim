scriptencoding utf-8

if exists('g:loaded_iVim') || &cp
	finish
endif
let g:loaded_iVim = 1

" Background image defaults
" Note: If you have confirm background changes set, this can be annoying, so
" you can either disable the confirm background changes or turn off realtime
let g:iVim_background_enabled = 1
let g:iVim_background_realtime = 1
" Tab colour defaults
let g:iVim_tabcolour_enabled = 1
let g:iVim_tabcolour_insert = "#33FFFF"
let g:iVim_tabcolour_normal = "#FFAA11"
let g:iVim_tabcolour_visual = "#FF5522"
" Later I will add tab colours for unedited and edited buffers
" Cursor defaults (0: block, 1: vertical bar, 2: underline)
let g:iVim_cursortype_enabled = 1
let g:iVim_cursortype_insert = 1	" Default: Vertical bar
let g:iVim_cursortype_normal = 2	" Default: Underline
let g:iVim_cursortype_visual = 0	" Default: Block

" Primary functions

command -bar iVimSetBgImg call g:iVim#image#setBgImg(%)

"command -bar iVimEnableAll call g:iVim#image#setBgImg()
"command -bar iVimDisableAll call g:iVim#all#disable()
"command -bar iVimToggleAll call g:iVim#all#toggle()

"command -bar iVimBackgroundImageEnable call g:iVim#background#enable()
"command -bar iVimBackgroundImageDisable call g:iVim#background#disable()
"command -bar iVimBackgroundImageToggle call g:iVim#background#toggle()

"command -bar iVimTabcolourEnable call g:iVim#tabcolour#enable()
"command -bar iVimTabcolourDisable call g:iVim#tabcolour#disable()
"command -bar iVimTabcolourToggle call g:iVim#tabcolour#toggle()

"command -bar iVimCursortypeEnable call g:iVim#cursortype#enable()
"command -bar iVimCursortypeDisable call g:iVim#cursortype#disable()
"command -bar iVimCursortypeToggle call g:iVim#cursortype#toggle()
