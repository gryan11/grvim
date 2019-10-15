"pathogen
execute pathogen#infect()

" Leader config:
let mapleader=","

" colorscheme
syntax enable
if has ('gui_running')
   set background=light
   colorscheme one   
else
"  set t_Co=16
  set t_Co=256
"  let g:solarized_termcolors=16
"  let g:solarized_termtrans=1
  let g:solarized_termcolors=256

  set background=dark
  colorscheme solarized   
"  set background=light
endif

" disable annoying cursor underline
hi cursorline term=bold cterm=bold

" colorscheme commands
command! Sol colorscheme solarized
command! One colorscheme one
command! Bgd set background=dark
command! Bgl set background=light

set autoread

" mac copy/paste
if has("unix")
  let s:uname = system("uname -s")
  if s:uname == "Darwin\n"
    vnoremap <D-c> :w !pbcopy<CR><CR>
    vnoremap <D-x> :!pbcopy<CR>
  endif
  if s:uname == "Linux\n"
    vmap <C-c> "+yi
    vmap <C-x> "+c
    vmap <C-v> c<ESC>"+p
    imap <C-v> <C-r><C-o>+  
  endif
endif


" visual block mode:
nnoremap <leader>v <C-V>

" set no readonly
set noro

" unfolding all
set foldlevel=99


" autocomplete
" so ~/.vim/bundle/word_complete/word_complete.vim
" call DoWordComplete()

" mouse config:
set mouse=a
" tab config:
set tabstop=2
set softtabstop=2
set shiftwidth=2
set autoindent
set expandtab


" UI config
set guioptions-=T       "remove tool bar
set guioptions-=m       "remove tool bar
set number
set showcmd
set cursorline          " highlight current line
filetype indent on
set wildmenu            " list options on tab autocomplete
set lazyredraw          "don't redraw screen unnecesarily

" quick file commands
nnoremap <leader>w :w<CR>
nnoremap <leader>W :w<CR>
inoremap <leader>w <esc>:w<CR>
inoremap <leader>W <esc>:w<CR>
vnoremap <leader>w <esc>:w<CR>
vnoremap <leader>W <esc>:w<CR>

nnoremap <leader>q :q<CR>
inoremap <leader>q <esc>:q<CR>
vnoremap <leader>q <esc>:q<CR>

"nnoremap <leader>n :n<CR>
"inoremap <leader>n <esc>:n<CR>
"vnoremap <leader>n <esc>:n<CR>

" quick comment/uncomment
" noremap <leader>cc :s/^/\/\//<CR>:noh<CR>
" noremap <leader>sc :s/^/# /<CR>:noh<CR>
" noremap <leader>uc :s/^..//<CR>:noh<CR>

" quick leader edit source
nnoremap <leader>ev :sp ~/.vimrc<CR>
nnoremap <leader>zv :source ~/.vimrc<CR>

" window navigation:
nnoremap wh :wincmd h<CR>
nnoremap wj :wincmd j<CR>
nnoremap wk :wincmd k<CR>
nnoremap wl :wincmd l<CR>

nnoremap w; :wincmd _<CR>
nnoremap w' :wincmd =<CR>

" Search config:
set incsearch
set hlsearch
nnoremap <leader><space> :nohlsearch<CR>

" quick copy paste
vnoremap <C-c> "*y
vnoremap <C-v> "*p
nnoremap <C-v> "*P
inoremap <C-v> <Esc>"*P`]a

noremap p "0p
noremap P "0P
noremap x "0x
noremap dd "0dd



" word copy paste
"nnoremap wy "ryiwmy
"nnoremap wp viw"rp



"undo
inoremap <C-z> <Esc>ua
nnoremap <C-z> u
vnoremap <C-z> <Esc>u

" Movement config:
nnoremap j gj
vnoremap j gj
nnoremap k gk
vnoremap k gk
nnoremap H b
vnoremap H b
nnoremap L e
vnoremap L e
nnoremap J <C-d>
vnoremap J <C-d>
nnoremap K <C-u>
vnoremap K <C-u>
"nnoremap <C-j> jjjj
"vnoremap <C-j> jjjj
nnoremap <C-J> jjjj
"nnoremap <C-J> <C-E><C-E><C-E><C-E>jjjj
vnoremap <C-J> jjjj
"vnoremap <C-J> <C-E><C-E><C-E><C-E>jjjj
"nnoremap <C-k> kkkk
"vnoremap <C-k> kkkk
nnoremap <C-K> kkkk
"nnoremap <C-K> <C-Y><C-Y><C-Y><C-Y>kkkk
vnoremap <C-K> kkkk
"vnoremap <C-K> <C-Y><C-Y><C-Y><C-Y>kkkk
nnoremap <C-h> B
vnoremap <C-h> B
nnoremap <C-l> E
vnoremap <C-l> E
nnoremap e $
vnoremap e $
nnoremap b ^
vnoremap b ^

nnoremap <leader>j J
vnoremap <leader>j J


" working yank
"vnoremap y ygv<Esc>my
"vnoremap y y`y

"marks
nnoremap ' `
vnoremap ' `

" blank line insert:
nnoremap o o<esc>
nnoremap O O<esc>

" single char insert for s
nnoremap s :exec "normal i".nr2char(getchar())."\e"<CR>
"nnoremap S :exec "normal a".nr2char(getchar())."\e"<CR>
nnoremap S :exec "normal vS".nr2char(getchar())."\e"<CR>

" normal tabs and spaces and delete
nnoremap <tab> i<tab><esc>l
nnoremap <space> i<space><esc>l
nnoremap <BS> i<BS><esc>l


" insert escape
inoremap jk <esc>
inoremap JK <esc>
inoremap jK <esc>
inoremap Jk <esc>

" git diff add shortcut
nnoremap <leader>ga :!git add %<CR><CR>

" git mergetool shortcuts
nnoremap <leader>dgr :diffg RE<CR>
nnoremap <leader>dgb :diffg BA<CR>
nnoremap <leader>dgl :diffg LO<CR>

" shift tab for real tab
inoremap <S-Tab> <C-V><Tab>

" latex inline
"nnoremap <leader>i i$$<esc>i
"inoremap <leader>i $$<esc>i
"nnoremap <leader>I :exec "normal i$".nr2char(getchar())."$\e"<CR>
"inoremap <leader>I <esc>:exec "normal i$".nr2char(getchar())."$\e"<CR>
"inoremap $ $$<esc>i
"inoremap { {}<esc>i



"autocmd BufEnter *.c setlocal tabstop=8 shiftwidth=8 softtabstop=8 textwidth=80 noexpandtab cindent cinoptions=:0,l1,t0,g0,(0 colorcolumn=81
"nnoremap <leader>k :setlocal tabstop=8 shiftwidth=8 softtabstop=8 textwidth=80 noexpandtab cindent cinoptions=:0,l1,t0,g0,(0 colorcolumn=81<CR>

" let g:syntastic_c_checkers = ['checkpatch']
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }



set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

set statusline+=%F


let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exe = 'npm run lint --'

nnoremap <leader>e :SyntasticCheck<CR>
nnoremap <leader>E :SyntasticToggleMode<CR>
inoremap <leader>e :SyntasticCheck<CR> 
inoremap <leader>E :SyntasticToggleMode<CR>
vnoremap <leader>e :SyntasticCheck<CR>
vnoremap <leader>E :SyntasticToggleMode<CR>

nnoremap ]l :try<bar>lnext<bar>catch /^Vim\%((\a\+)\)\=:E\%(553\<bar>42\):/<bar>lfirst<bar>endtry<cr>
nnoremap [l :try<bar>lprevious<bar>catch /^Vim\%((\a\+)\)\=:E\%(553\<bar>42\):/<bar>lfirst<bar>endtry<cr>

" wrap :cnext/:cprevious and :lnext/:lprevious
function! WrapCommand(direction, prefix)
    if a:direction == "up"
        try
            execute a:prefix . "previous"
        catch /^Vim\%((\a\+)\)\=:E553/
            execute a:prefix . "last"
        catch /^Vim\%((\a\+)\)\=:E\%(776\|42\):/
        endtry
    elseif a:direction == "down"
        try
            execute a:prefix . "next"
        catch /^Vim\%((\a\+)\)\=:E553/
            execute a:prefix . "first"
        catch /^Vim\%((\a\+)\)\=:E\%(776\|42\):/
        endtry
    endif
endfunction

" go up and down the quickfix list and wrap around
nnoremap [l :call WrapCommand('up', 'l')<CR>
nnoremap ]l  :call WrapCommand('down', 'l')<CR>


au FocusGained * :redraw!

" substitut:,$s/\vBEFORE/AFTER/gce
nnoremap <leader>s :,$s/\<<C-r><C-w>\>/
vnoremap <leader>s "hy:,$s/<C-r>h//gc<left><left><left>
" supertab
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "<CR>"

" make
noremap <leader>m :!./make.sh \|\| make<CR>

" NERDTREE
" nnoremap <leader>t :NERDTreeToggle<CR>
" buffergator overriding t?
nnoremap <leader>r :NERDTreeToggle<CR>

" NERD commenter
filetype plugin on
inoremap <Leader>cc <C-o>:call NERDComment(0,"toggle")<C-m>
nnoremap <Leader>cc :call NERDComment(0,"toggle")<C-m>
vnoremap <Leader>cc :call NERDComment(0,"toggle")<C-m>

" BUGGERGATOR
nnoremap <leader>b :BuffergatorToggle<CR>

" toggle background 
nnoremap <Leader>g :let &background = ( &background == "dark"? "light" : "dark" )<CR>

" auto pairs:
let g:AutoPairs={'(':')', '[':']', '{':'}',"'":"'",'"':'"', '`':'`'}
"autocmd FileType tex setlocal g:AutoPairs={'(':')', '[':']', '{':'}',"'":"'",'"':'"', '`':'`', '$':'$'}
let g:AutoPairsShortcutJump='<C-n>'
"inoremap <leader>n <M-n>
"nnoremap <leader>n <M-n>
"vnoremap <leader>n <M-n>

" function jump
" jump to the previous function
 nnoremap <silent> [f :call
 \ search('\(\(if\\|for\\|while\\|switch\\|catch\)\_s*\)\@64<!(\_[^)]*)\_[^;{}()]*\zs{', "bw")<CR>
" " jump to the next function
 nnoremap <silent> ]f :call
 \ search('\(\(if\\|for\\|while\\|switch\\|catch\)\_s*\)\@64<!(\_[^)]*)\_[^;{}()]*\zs{',"w")<CR>

 " rerun last : command
nnoremap <leader>a @:

 " no read only for vimdiff
set noro


source ~/.vim/bundle/matchit/plugin/matchit.vim

" session management:
silent !mkdir ~/.vim/sessions > /dev/null 2>&1
function! s:MakeSess(sess_name)
  execute 'mksession!' "~/.vim/sessions/" . a:sess_name
  echom 'saved new session ' . a:sess_name
endfunction

function! s:LoadSess(sess_name)
  execute 'source' "~/.vim/sessions/" . a:sess_name
  echom 'loaded session ' . a:sess_name
endfunction

command! -nargs=1 Ms call s:MakeSess(<f-args>)
command! -nargs=1 Ls call s:LoadSess(<f-args>)

" vim -b : edit binary using xxd-format!
augroup Binary
  au!
  au BufReadPre  *.bin let &bin=1
  au BufReadPost *.bin if &bin | %!xxd
  au BufReadPost *.bin set ft=xxd | endif
  au BufWritePre *.bin if &bin | %!xxd -r
  au BufWritePre *.bin endif
  au BufWritePost *.bin if &bin | %!xxd
  au BufWritePost *.bin set nomod | endif
augroup END


" backspace delete normally
set backspace=indent,eol,start
