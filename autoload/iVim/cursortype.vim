" autoload/iVim/cursortype.vim 

"function! g:iVim#cursor#auto ()
"	if version >= 700
"		autocmd InsertEnter <buffer> call g:iVim#cursor#set(g:iVim_cursortype_insert)
"		autocmd InsertLeave <buffer> call g:iVim#cursor#set(g:iVim_cursortype_normal)
"	endif
"endfunction

" Usage:
" 	Sets the cursor shape using iTerm2 escape codes.
" Inputs:
" 	state:
" 		The state to set the cursor to.
"		0: Block cursor
"		1: Vertical bar cursor
"		2: Underline cursor
" Outputs:
" 	None
function! g:iVim#cursortype#set (state)
	let l:tmpCmd = 'echo -e "\033]1337;CursorShape=' state '\a"'
	call system(l:tmpCmd)
endfunction

" Usage:
" 	Sets the cursor type to insert mode
" Inputs:
" 	None
" Outputs:
" 	None
function! g:iVim#cursortype#insert ()
	call g:iVim#cursortype#set (g:iVim_cursortype_insert)
endfunction

" Usage:
" 	Sets the cursor type to normal mode
" Inputs:
" 	None
" Outputs:
" 	None
function! g:iVim#cursortype#normal ()
	call g:iVim#cursortype#set (g:iVim_cursortype_normal)
endfunction
