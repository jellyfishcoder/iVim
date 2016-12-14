scriptencoding utf-8

if exists('g:loaded_iVim') || &cp
	finish
endif
let g:loaded_iVim = 1

" Initialisation {{{
function! s:set(var, default) abort
	if !exists(a:var)
		if type(a:default)
			execute 'let' a:var '=' string(a:default)
		else
			execute 'let' a:var '=' a:default
		endif
	endif
endfunction

" Background image defaults
" Note: If you have confirm background changes set, this can be annoying, so
" you can either disable the confirm background changes or turn off realtime
call s:set('g:iVim_background_enabled',		1)
call s:set('g:iVim_background_realtime',	1)
" Tab colour defaults
call s:set('g:iVim_tabcolour_enabled',		1)
call s:set('g:iVim_tabcolour_insert',		#33FFFF)
call s:set('g:iVim_tabcolour_normal',		#FFAA11)
call s:set('g:iVim_tabcolour_visual',		#FF5522)
" Later I will add tab colours for unedited and edited buffers
" Cursor defaults (0: block, 1: vertical bar, 2: underline)
call s:set('g:iVim_cursortype_enabled',		1)
call s:set('g:iVim_cursortype_insert',		1)	" Default: Vertical bar
call s:set('g:iVim_cursortype_normal',		2)	" Default: Underline
call s:set('g:iVim_cursortype_visual',		0)	" Default: Block

" Primary functions

command -bar iVimEnableAll call iVim#all#enable()
command -bar iVimDisableAll call iVim#all#disable()
command -bar iVimToggleAll call iVim#all#toggle()

command -bar iVimBackgroundImageEnable call iVim#background#enable()
command -bar iVimBackgroundImageDisable call iVim#background#disable()
command -bar iVimBackgroundImageToggle call iVim#background#toggle()

command -bar iVimTabcolourEnable call iVim#tabcolour#enable()
command -bar iVimTabcolourDisable call iVim#tabcolour#disable()
command -bar iVimTabcolourToggle call iVim#tabcolour#toggle()

command -bar iVimCursortypeEnable call iVim#cursortype#enable()
command -bar iVimCursortypeDisable call iVim#cursortype#disable()
command -bar iVimCursortypeToggle call iVim#cursortype#toggle()
