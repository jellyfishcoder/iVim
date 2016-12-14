" autoload/iVim.vim

" filename: (string) filename as a string
"function! s:iVim#toB64(filename) abort
"	let s:temptoB64store = filename
"	ruby <<EOF
"		require "base64"
"		temptoB64
"	EOF
"endfunction		

function! iVim#background#enable()
	if (g:iVim_background_realtime == 1)
		autocmd BufWritePost,BufRead <buffer> echo -e "^[]1337;SetBackgroundImageFile=
