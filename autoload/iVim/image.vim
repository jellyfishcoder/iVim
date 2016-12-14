" autoload/iVim/image.vim

" Usage:
" 	Set background image to 'imgpath' in iTerm2
" Inputs:
" 	imgpath:
" 		Path to the image to be loaded
" Outputs:
" 	\none
function! g:iVim#image#setBgImg(imgpath)
	" Local variable holding the stuffs we need
	let l:tmpImgCmd = '\033'
	"if ($TERM ==# "screen*")
	"	" Must have a double escape for tmux
	"	let l:tmpImgCmd = join([l:tmpImgCmd, 'Ptmux;\033\033'], '')
	"endif
	" Add more to the weird string (and the line is an abomination of
	" nature and all coding style, which is very distressing)
	let l:tmpImgCmd = join([l:tmpImgCmd, ']1337;SetBackgroundImageFile=', system(join(['cat', a:imgpath, '| base64'], ' ')), '\a'], '')
	" Add escape sequence tail
	"if ($TERM ==# "screen*")
	"	" Must have double escape for tmux
	"	let l:tmpImgCmd = join([l:tmpImgCmd, '\033\\'], '')
	"endif

	" And... after that horrid mess, set the background image
	call system('echo -e', l:tmpImgCmd)
endfunction

" Usage:
" 	Displays an image at 'imgpath' inline using iTerm2
" Inputs:
" 	imgpath:
" 		Path to the image to be displayed
" Outputs:
" 	One inline image
function! g:iVim#image#dispInlineImg(imgpath)
	" Local variable holding the things we will later echo (MUST use
	" single quotes, double quotes will escape)
	let l:tmpImgCmd = '\033'
	" Check if we are inside a tmux or screen session
	if ($TERM ==# "screen*")
		" Must have a double escape for tmux
		let l:tmpImgCmd = join([l:tmpImgCmd, 'Ptmux;\033\033'], '')
	endif
	" Finish escape sequence head
	let l:tmgImgCmd = join([l:tmpImgCmd, ']1337;File='], '')
	" Add the base64 encoded filepath
	let l:tmpImgCmd = join([l:tmpImgCmd, 'name=', system('base64', a:imgpath), ';'], '')
	" Add other options (auto width and height, preserveAspectRatio, inline)
	let l:tmpImgCmd = join([l:tmpImgCmd, 'width=auto;', 'height=auto;', 'preserveAspectRatio=1;', 'inline=1'], '')
	" Add the base64 encoded file contents
	let l:tmpImgCmd = join([l:tmpImgCmd, ':', system('base64 <', a:imgpath), ';'], '')
	" Add escape sequence tail
	let l:tmpImgCmd = join([l:tmpImgCmd, '\a'], '')
	if ($TERM ==# "screen*")
		" Must have double escape for tmux
		let l:tmpImgCmd = join([l:tmpImgCmd, '\033\\'], '')
	endif

	" Display the image inline
	call system('echo -e', l:tmpImgCmd)
endfunction
