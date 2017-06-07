let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/Dropbox/git-projects/tableau-vr/tableau-js-test
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +12 index.html
badd +37 ~/Dropbox/git-projects/tableau-vr/tableau-js-test/surf-in-style-master/index.html
badd +37 ~/Dropbox/git-projects/tableau-vr/tableau-js-test/surf-in-style-master/src/app.js
badd +49 ~/Dropbox/git-projects/tableau-vr/surf-in-style-master/src/app.js
badd +2 ~/Dropbox/git-projects/tableau-vr/surf-in-style-master/index.html
badd +1 ~/Dropbox/git-projects/tableau-vr/surf-in-style-master/src/Player.js
badd +1 ~/Dropbox/git-projects/tableau-vr/surf-in-style-master/src/Website.js
badd +1 ~/Dropbox/git-projects/tableau-vr/surf-in-style-master/src/entity-component/World.js
argglobal
silent! argdel *
$argadd index.html
edit ~/Dropbox/git-projects/tableau-vr/surf-in-style-master/index.html
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winminheight=1 winheight=1 winminwidth=1 winwidth=1
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 99 - ((32 * winheight(0) + 19) / 38)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
99
normal! 014|
tabedit ~/Dropbox/git-projects/tableau-vr/surf-in-style-master/src/app.js
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winminheight=1 winheight=1 winminwidth=1 winwidth=1
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 57 - ((1 * winheight(0) + 19) / 38)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
57
normal! 04|
tabedit ~/Dropbox/git-projects/tableau-vr/surf-in-style-master/src/Website.js
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winminheight=1 winheight=1 winminwidth=1 winwidth=1
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 37 - ((36 * winheight(0) + 19) / 38)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
37
normal! 0
tabnext 2
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToOc
set winminheight=1 winminwidth=1
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
