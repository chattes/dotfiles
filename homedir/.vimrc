" Custom Config
set nocompatible              " be iMproved, required
set number
set path=$PWD/**
set wildignore+=*/node_modules/*
set tags=tags
set autochdir
filetype off                  " required

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Must Have
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
colorscheme solarized
" syntax on " syntax highlighting on
syntax enable
let g:solarized_termtrans = 1
call togglebg#map("<F5>")
if has('gui_running')
    set background=light
else
    set background=dark
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" PLug
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set completeopt=longest,menuone
call plug#begin('~/vim/plugged')
if has('nvim')
				Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
				Plug 'Shougo/deoplete.nvim'
				Plug 'roxma/nvim-yarp'
				Plug 'roxma/vim-hug-neovim-rpc'
endif
Plug 'KabbAmine/zeavim.vim'
Plug 'kien/ctrlp.vim'
Plug 'mtth/scratch.vim'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'vimlab/neojs'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
Plug 'dhruvasagar/vim-zoom'
Plug 'w0rp/ale'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-fugitive'
Plug 'nightsense/vim-crunchbang'
Plug 'tomasr/molokai'
Plug 'pangloss/vim-javascript'
Plug 'jelera/vim-javascript-syntax'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'Raimondi/delimitMate'
Plug 'gavocanov/vim-js-indent'
Plug 'Sirver/ultisnips'
Plug 'honza/vim-snippets'
Plug 'gmarik/ingretu'
Plug 'ervandew/supertab'
Plug 'tomtom/tcomment_vim'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'altercation/vim-colors-solarized'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-colorscheme-switcher'
Plug 'flazz/vim-colorschemes'
Plug 'vim-scripts/Txtfmt-The-Vim-Highlighter'
Plug 'moll/vim-node'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-surround'
Plug 'mxw/vim-jsx'
Plug 'plasticboy/vim-markdown'
Plug 'groenewege/vim-less'
Plug 'xolox/vim-easytags'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'christoomey/vim-tmux-navigator'
Plug 'tpope/vim-endwise'
Plug 'slashmili/alchemist.vim'
Plug 'elixir-editors/vim-elixir'
Plug 'Valloric/MatchTagAlways'
Plug 'alvan/vim-closetag'
Plug 'machakann/vim-highlightedyank'
call plug#end()

filetype plugin indent on    " required
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set UTF-8 encoding
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8
set history=1000 " How many lines of history to remember
set cf " enable error files and error jumping
" set clipboard+=unnamed " turns out I do like sharing windows clipboard
set ffs=unix,dos,mac " support all three, in this order
set viminfo+=! " make sure it can save viminfo
set isk+=_,$,@,%,# " none of these should be word dividers, so make them not be
set nosol " leave my cursor where it was

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Files/Backups/Sessions
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nobackup
set nowb
set noswapfile
set directory=~/.vim/temp " directory for temp files
set makeef=error.err " When using make, where should it dump the file
set sessionoptions+=globals " What should be saved during sessions being saved
set sessionoptions+=localoptions " What should be saved during sessions being saved
set sessionoptions+=resize " What should be saved during sessions being saved
set sessionoptions+=winpos " What should be saved during sessions being saved

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim UI
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set lsp=0 " space it out a little more (easier to read)
set wildmenu " turn on wild menu
set wildmode=list:longest " turn on wild menu in special format (long format)
set wildignore=*.dll,*.o,*.obj,*.bak,*.exe,*.pyc,*.swp,*.jpg,*.gif,*.png " ignore formats
set ruler " Always show current positions along the bottom
set cmdheight=1 " the command bar is 1 high
set number " turn on line numbers
set lz " do not redraw while running macros (much faster) (LazyRedraw)
set hid " you can change buffer without saving
set backspace=2 " make backspace work normal
set whichwrap+=<,>,h,l  " backspace and cursor keys wrap to
set mouse=a " use mouse everywhere
set shortmess=atI " shortens messages to avoid 'press a key' prompt
set report=0 " tell us when anything is changed via :...
set noerrorbells " don't make noise
set list " we do what to show tabs, to ensure we get them out of my files
set listchars=tab:>-,trail:- " show tabs and trailing whitespace

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Visual Cues
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set showmatch " show matching brackets
set mat=5 " how many tenths of a second to blink matching brackets for
set nohlsearch " do not highlight searched for phrases
set incsearch " BUT do highlight as you type you search phrase
set so=5 " Keep 5 lines (top/bottom) for scope
set novisualbell " don't blink
" statusline example: ~\myfile[+] [FORMAT=format] [TYPE=type] [ASCII=000] [HEX=00] [POS=0000,0000][00%] [LEN=000]
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
set laststatus=2 " always show the status line

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Indent Related
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set ai " autoindent (filetype indenting instead)
set nosi " smartindent (filetype indenting instead)
set cindent " do c-style indenting
set softtabstop=4 " unify
set shiftwidth=4 " unify
set tabstop=4 " real tabs should be 4, but they will show with set list on
set copyindent " but above all -- follow the conventions laid before us
" wrap lines at 120 chars. 80 is somewhat antiquated with nowadays displays.
set textwidth=120
filetype plugin indent on " load filetype plugins and indent settings

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Text Formatting/Layout
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set fo=tcrq " See Help (complex)
set shiftround " when at 3 spaces, and I hit > ... go to 4, not 5
set expandtab " no real tabs!
set nowrap " do not wrap line
set preserveindent " but above all -- follow the conventions laid before us
set ignorecase " case insensitive by default
set smartcase " if there are caps, go case-sensitive
set completeopt=menu,longest,preview " improve the way autocomplete works
set cursorcolumn " show the current column
set cursorline
" hi CursorLine term=underline ctermbg=008 guibg=#493a35

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Folding
"    Enable folding, but by default make it act like folding is
"    off, because folding is annoying in anything but a few rare
"    cases
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set foldenable " Turn on folding
set foldmarker={,} " Fold C style code
set foldmethod=marker " Fold on the marker
set foldlevel=100 " Don't autofold anything (but I can still fold manually)
set foldopen-=search " don't open folds when you search into them
set foldopen-=undo " don't open folds when you undo stuff
"  Matchit
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let b:match_ignorecase = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Perl
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" let perl_extended_vars=1 " highlight advanced perl vars inside strings

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Custom Functions
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Select range, then hit :SuperRetab($width) - by p0g and FallingCow
function! SuperRetab(width) range
    silent! exe a:firstline . ',' . a:lastline . 's/\v%(^ *)@<= {'. a:width .'}/\t/g'
endfunction

"
" Useful abbrevs
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
iab xdate <c-r>=strftime("%d/%m/%y %H:%M:%S")<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Autocommands
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
au BufRead,BufNewFile *.zcml set filetype=xml
au BufRead,BufNewFile *.rb,*.rhtml set tabstop=2
au BufRead,BufNewFile *.rb,*.rhtml set shiftwidth=2
au BufRead,BufNewFile *.rb,*.rhtml set softtabstop=2
au BufRead,BufNewFile *.otl set syntax=blockhl
au BufRead,BufNewFile *.json set syntax=javascript
au FileType python set omnifunc=pythoncomplete#Complete
au FileType javascript set omnifunc=javascriptcomplete#CompleteJS
au FileType html set omnifunc=htmlcomplete#CompleteTags
au FileType css set omnifunc=csscomplete#CompleteCSS
au FileType xml set omnifunc=xmlcomplete#CompleteTags
au FileType c set omnifunc=ccomplete#Complete
" autocmd vimenter * NERDTree

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Change paging overlap amount from 2 to 5 (+3)
" if you swapped C-y and C-e, and set them to 2, it would
" remove any overlap between pages
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <C-b> <C-b>3<C-e> "  Make overlap 3 extra on control-b

" Yank text to the macOS clipboard
noremap <leader>y "*y
noremap <leader>yy "*Y

" Preserve indentation while pasting text from the macOS clipboard
noremap <leader>p :set paste<CR>:put  *<CR>:set nopaste<CR>

" esformatter
" type \es to format
nnoremap <silent> <leader>es :Esformatter<CR>
vnoremap <silent> <leader>es :EsformatterVisual<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let NERDTreeIgnore=['\.DS_Store$']
" auto open if no file sent as arg
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" Toggle NERDtree with C-n
map ,n <plug>NERDTreeTabsToggle<CR>
" Autoclose if only NERDtree is left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Syntastic
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_html_tidy_quiet_messages = { "level": "warnings" }
let g:syntastic_html_tidy_ignore_errors = [ '<template> is not recognized!' ]

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
let g:syntastic_enable_eslint_checker = 1
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_enable_tslint_checker = 1
let g:syntastic_typescript_checkers = ['tslint', 'tsc']
let g:syntastic_enable_pug_checker = 1
let g:syntastic_pug_checkers = ['jade','pug']
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Other
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:sneak#streak = 1
let g:airline_theme='bubblegum'


let g:deoplete#enable_at_startup = 1
" To map <Esc> to exit terminal-mode:
if has('nvim')
    :tnoremap <Esc> <C-\><C-n>
    nnoremap <C-o><C-t> :below 10sp term://$SHELL<cr>i
    set inccommand=split
endif

tnoremap ii <C-\><C-n>
tnoremap <C-w><C-h> <C-\><C-N><C-w>h
tnoremap <C-w><C-j> <C-\><C-N><C-w>j
tnoremap <C-w><C-k> <C-\><C-N><C-w>k
tnoremap <C-w><C-l> <C-\><C-N><C-w>l


imap <C-c> <CR><Esc>O
imap ii <Esc>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
set backspace=indent,eol,start
" make YCM compatible with UltiSnips (using supertab)
let g:UltiSnipsSnippetDirectories=['~/.local/share/nvim/plugged/vim-snippets/UltiSnips', 'UltiSnips']
let g:used_javascript_libs='underscore,ramda,react,jquery'
let g:SuperTabDefaultCompletionType = '<C-n>'
let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
"Auto Close YCMD Hints and Semantics
let g:jsx_ext_required = 0
let g:nerdtree_tabs_open_on_console_startup=0
" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
let g:ale_sign_error = '>' " Less aggressive than the default '>>'
let g:ale_sign_warning = '.'
let g:ale_lint_on_enter = 1 " Less distracting when opening a new file
"Tag completion
:iabbrev </ </<C-X><C-O>
"Nerdtree Shortcut mapping
map <silent> <C-t> :NERDTreeToggle<ENTER>
map <silent> <C-e> :Errors
map <silent> <C-n><C-h> :noh
"CtrlP Settings
let g:ctrlp_working_path_mode = 'ra'
" Ignore some folders and files for CtrlP indexing
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.yardoc\|node_modules\|log\|tmp$\|build\|public',
  \ 'file': '\.so$\|\.dat$|\.DS_Store$'
  \ }

"Syntastic
let g:syntastic_check_on_open=1
let g:syntastic_always_populate_loc_list = 1
" Emmet Configuration
let g:user_emmet_leader_key='<C-E>'

let g:user_emmet_settings = {
												\  'javascript.jsx' : {
												\      'extends' : 'jsx',
												\  },
												\}
let g:syntastic_javascript_checkers = ['eslint']
let g:ale_fixers = {}
let g:ale_fixers['javascript'] = ['prettier']
let g:ale_fix_on_save = 1
let g:ale_javascript_prettier_options = '--single-quote --trailing-comma es5 --no-semi --jsx-bracket-same-line'
" Match tag types
let g:mta_filetypes = {
												\ 'html' : 1,
												\ 'xhtml' : 1,
												\ 'xml' : 1,
												\ 'jinja' : 1,
												\ 'jsx'    : 1,
												\ 'javascript': 1
												\}
"Auto close tags including jsx
"-----------------------------
"
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.jsx,*.js'
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx,*.js'
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
"
let g:closetag_emptyTags_caseSensitive = 1
" Shortcut for closing tags, default is '>'
" "
let g:closetag_shortcut = '>'

"Script to autoclose NERDTree side pane
"--------------------------------------
function! s:CloseIfOnlyControlWinLeft()
				if winnr("$") != 1
								return
				endif
				if (exists("t:NERDTreeBufName") && bufwinnr(t:NERDTreeBufName) != -1)
																\ || &buftype == 'quickfix'
								q
				endif
endfunction
augroup CloseIfOnlyControlWinLeft
				au!
				au BufEnter * call s:CloseIfOnlyControlWinLeft()
augroup END

" Tab Coloring
:hi TabLineFill ctermfg=LightGreen ctermbg=DarkGreen
:hi TabLine ctermfg=Blue ctermbg=Yellow
:hi TabLineSel ctermfg=Red ctermbg=Yellow
