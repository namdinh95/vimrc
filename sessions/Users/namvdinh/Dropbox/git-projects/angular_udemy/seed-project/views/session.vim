let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/Dropbox/git-projects/angular_udemy/seed-project/views
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +32 ~/Dropbox/git-projects/angular_udemy/seed-project/bin/www
badd +22 ~/Dropbox/git-projects/angular_udemy/seed-project/app.js
badd +1 ~/Dropbox/git-projects/angular_udemy/seed-project/routes/app.js
badd +6 ~/Dropbox/git-projects/angular_udemy/seed-project/views/index.hbs
badd +1 ~/Dropbox/git-projects/angular_udemy/seed-project/assets/app/app.component.html
badd +3 ~/Dropbox/git-projects/angular_udemy/seed-project/views/node.hbs
badd +32 ~/Dropbox/git-projects/yui-bot/index.js
badd +0 ~/Dropbox/git-projects/angular_udemy/seed-project/package.json
badd +0 views/node.hbs
badd +0 routes/app.js
argglobal
silent! argdel *
$argadd ~/Dropbox/git-projects/angular_udemy/seed-project/package.json
edit ~/Dropbox/git-projects/angular_udemy/seed-project/views/node.hbs
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
let s:l = 7 - ((6 * winheight(0) + 17) / 34)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
7
normal! 07|
tabnext 1
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
