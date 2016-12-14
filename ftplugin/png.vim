" ftplugin/png.vim

" Make sure the user wants this
if(g:iVim_background_enabled == 1)
	if(g:iVim_background_realtime == 1)
		" Add an autocmd to update image on save
		autocmd BufRead,BufWritePost <buffer> call g:iVim#image#setBgImg(expand("%:p"))
	endif
	" Display image now
	call g:iVim#image#setBgImg(expant("%:p"))
endif
