" Pathogen stuff
call pathogen#infect()
call pathogen#helptags()

color dracula
syntax on
filetype plugin indent on
set tabstop=8 softtabstop=0 expandtab shiftwidth=2 smarttab
set number
set colorcolumn=80
imap ` <Esc>
set hlsearch
"Force current directory to current file
"set autochdir 
" Search for visually selected text
vnoremap // y/<C-R>"<CR> 

" Ctrl-P
let g:ctrlp_map='<c-p>'
let g:ctrlp_cmd='CtrlP'
let g:ctrlp_working_path_mode='ra'

" NERDTree
map <silent> <C-n> :NERDTreeToggle<CR> :NERDTreeMirror<CR>
let NERDTreeQuitOnOpen=1

" Syntastic Settings 
nnoremap <C-w>e :SyntasticReset<CR>
nnoremap <C-w>d :SyntasticToggleMode<CR>
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 1

" YouCompleteMe Options
let g:ycm_key_list_select_completion = ['<Tab>', '<Down>']
let g:ycm_global_ycm_extra_conf = '/Users/namvdinh/Dropbox/git-projects/.ycm_extra_conf.py'
let g:ycm_show_diagnostics_ui = 0
let g:ycm_autoclose_preview_window_after_completion = 1

" UltiSnips trigger config. 
let g:UltiSnipsExpandTrigger="<c-e>"
let g:UltiSnipsJumpForwardTrigger="<c-f>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"
" defines a list of names used for snippet directories
let g:UltiSnipsSnippetDirectories=["UltiSnips"]

" vim-airline - Powerline font symbol
let g:airline_powerline_fonts=1
let g:airline_theme='dracula'

" Auto-pairs ignore ` character
let g:AutoPairs = {'(':')', '[':']', '{':'}',"'":"'",'"':'"'}

" HTML Closetags rule
let g:closetag_filenames = "*.html,*.xhtml,*.phtml"

" Make PostgreSQL color syntax default
let g:sql_type_default = 'pgsql'

" Autosave and autoload sessions
function! MakeSession()
  let b:sessiondir=$HOME . "/.vim/sessions" . getcwd()
  if (filewritable(b:sessiondir) != 2)
    exe 'silent !mkdir -p' b:sessiondir
    redraw!
  endif
  let b:filename=b:sessiondir . '/session.vim'
  exe "mksession! " . b:filename
endfunction

function! LoadSession()
  let b:sessiondir=$HOME . "/.vim/sessions" . getcwd()
  let b:sessionfile=b:sessiondir . "/session.vim"
  if (filereadable(b:sessionfile))
    exe 'source ' b:sessionfile
  else
    echo "No session loaded."
  endif
endfunction
" Adding automatons for when entering or leaving Vim
if (argc() == 0)
  au VimEnter * nested :call LoadSession()
endif
au VimLeave * :call MakeSession()
