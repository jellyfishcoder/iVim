" autoload/iVim/cursor.vim

function! g:iVim#cursor#autoall ()
	if g:iVim_cursortype_enabled == 1
		if version >= 700


function! g:iVim#cursor#auto ()
	if version >= 700
		autocmd InsertEnter <buffer> call g:iVim#cursor#set(g:iVim_cursortype_insert)
		autocmd InsertLeave <buffer> call g:iVim#cursor#set(g:iVim_cursortype_normal)
	endif
endfunction

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
function! g:iVim#cursor#set (state)
	let l:tmpCmd = 'echo -e "\033]1337;CursorShape=' state '\a"'
	call system('echo -e "\033]1337;CursorShape='shellescape(state)'\a"')
endfunction
