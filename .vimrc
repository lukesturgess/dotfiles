"------Vundle set up--------

set nocompatible                         " We want the lastest vim settings be iMproved, required

so ~/.vim/plugins.vim               " Source/read the plugins vim file (Vundle)

syntax enable


"------- Visual Settings ----------"
colorscheme atom-dark-256
set t_CO=256                 "Use 256 colours - useful for Terminal Vim.
"set guifont=Fira_Code:h17    "Set default font family and size

set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R

highlight LineNr ctermbg=bg  "ctermfg Change background color for linenumber gutter
" guibg=grey guifg=

" Fake custom left padding for each window
set foldcolumn=2
hi foldcolumn guibg=bg ctermbg=bg

" Get rid of vertical split borders
hi vertsplit guifg=bg guibg=bg
hi vertsplit ctermfg=bg ctermbg=bg



":set fillchars+=vert:\ 

set splitright   "vsplit will open new window to right of current
set splitbelow  "split will open new window below current

set backspace=indent,eol,start  "Make backspace behave like every other editor
" set my Leader key mapping
let mapleader = ','            "The default leader is \, but a comma could be better
"set number
set nonumber
" set linespace=15    " gui only eg. Macvim - set line height (use terminal settings for vim)

"-------Search----------------"
set hlsearch
set incsearch




"------Split Windows Management ----"
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>




"------------Mappings----------
" when I type this, I want it to do that
" imap - map for insert mode
" nmap - normal mode
" , - choose a custom key that is like a 'namespace' to begin your mappings
" <Leader> - variable name for your 'namespace' - defaults to \

"Edit Vimrc file
nmap <Leader>ev :tabedit $MYVIMRC<cr>      

" Quick Edit Vundle Plugin file
nmap <Leader>ep :tabedit ~/.vim/plugins.vim<cr>

" Quick Edit gvimrc file
nmap <Leader>eg :tabedit ~/.gvimrc<cr>

" Quick Edit .zshrc file
nmap <Leader>ez :tabedit ~/.zshrc<cr>

" Add simple highlight removal
nmap <Leader><space> :nohlsearch<cr>

" Open help in Vertical window
nmap <Leader>h :vert help

" Quick NERDTree Toggle
nmap <Leader>1 :NERDTreeToggle<cr>

" CtrlP Buffer Tag Search
nmap <c-R> :CtrlPBufTag<cr>

" CtrlP Most Recently Used Files
nmap <Leader>r :CtrlPMRUFiles<cr>

" VimShell - open in Horiz split window
nmap <Leader>sh :10sp<cr>:VimShell<cr>

" VimShell - open in Vert split window
nmap <Leader>vsh :60vsp<cr>:VimShell<cr>

" Ctag search
nmap <Leader>f :tag<space>

" Toggle linenumbers
nmap <Leader>n :set invnumber<cr>

" Add comma to end of line
nmap <Leader>, A,<esc>

"- LastMap----




"-------------Plugins-------------------"
"/
"/ CtrlP
"/
let g:ctrlp_custom_ignore = 'node_modules|DS_Store|git'
"let g:ctrlp_match_window = 'top,order:ttb,min:1,max:30,results:30';

"/
"/ NERDTree
"/
let NERDTreeHijackNetrw = 0

"/
"/ NERDCommenter
"/
nmap <d-/> <leader>c<space>

"------------AutoVimrc-Commands---------"

"Automatically source the Vimrc file on save
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END

"---------Powerline-status set-up-----------------
set rtp+=/Users/Luke/Library/Python/2.7/lib/python/site-packages/powerline/bindings/vim
 
" These lines setup the environment to show graphics and colors correctly.
set nocompatible
set t_Co=256
 

python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
 
if ! has('gui_running')
   set ttimeoutlen=10
   augroup FastEscape
      autocmd!
      au InsertEnter * set timeoutlen=0
      au InsertLeave * set timeoutlen=1000
   augroup END
endif

set laststatus=2 " Always display the statusline in all windows
set guifont=Inconsolata\ for\ Powerline:h14
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)

"---------Useful commands--------
" :bd - buffer delete (useful for closing netrw/explore/nerdtree)
" :help - help
" :tabedit - open in new tab
" :tabc - close tab
" :so % - reload the vimrc on current file.
"--------Native Explore mode------
" :E
"lazy	mnemonic	open file explorer
":e.	:edit .	at current working directory
":sp.	:split .	in split at current working directory
":vs.	:vsplit .	in vertical split at current working directory
":E	:Explore	at directory of current file
":Se	:Sexplore	in split at directory of current file
":Vex	:Vexplore	in vertical split at directory of current file
" d creates a new directory
" % creates and opens a new file
" D deletes a directory or file
" R renames a file
" o opens the file in a horizontal split
" v opens the file in a vertical split
" :help guioptions
" [Ctrl][Cmd]F - Full Screen
" -----NAVIGATION
"  H - High
"  M - Middle
"  L - Low
"  ^F ^B - scroll Forward/Back 1 page
"  ^D ^U - scroll Down / Up 1/2 page
"  ^E ^Y - scroll Enter / Yesterday up, down 1 line
"  CTRL-^ - Jump to alternate buffer (go back to last editing position)
"  zz - center line where cursor is located
" caw - change all word (wherever you are)
" D - delete until end of line (short for d$)
" C - change until end of line
" P - paste before/above
