set nocompatible

call plug#begin('~/.config/nvim/plugged')

" Defaults
Plug 'tpope/vim-sensible'

" Set working directory to project
Plug 'airblade/vim-rooter'

" Start screen for vim
Plug 'mhinz/vim-startify'

" Easymotion
Plug 'easymotion/vim-easymotion'

" Vim-test
Plug 'janko-m/vim-test'

" Switch values
Plug 'AndrewRadev/switch.vim'

" Custom text-objects
Plug 'wellle/targets.vim'

" Session management
Plug 'xolox/vim-session'

" Smart f key
Plug 'rhysd/clever-f.vim'

" Kill buffer
Plug 'moll/vim-bbye'
Plug 'arithran/vim-delete-hidden-buffers'

" Highglight unneeded whitespace
Plug 'ntpeters/vim-better-whitespace'

" Completion
" Plug 'Shougo/neco-vim'
Plug 'neoclide/coc-neco'
Plug 'neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install()}}

" Autopairs for brackets
Plug 'cohama/lexima.vim'

" Must have
Plug 'tpope/vim-surround'

" Dispatch tasks
Plug 'tpope/vim-dispatch'

" Easy replace occurences
Plug 'svermeulen/vim-subversive'

" Easy resizing of windows
Plug 'hsanson/vim-winmode'

" Syntax-checker
Plug 'w0rp/ale'

" NERDTree
" Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'

" Easy commenting
Plug 'tomtom/tcomment_vim'

" Repeat for plugins
Plug 'tpope/vim-repeat'

" Additional useful keymappings
Plug 'tpope/vim-unimpaired'

" FZF for vim
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'liuchengxu/vim-clap'

" Vim slash
Plug 'junegunn/vim-slash'

" Colorscheme
Plug 'flazz/vim-colorschemes'
Plug 'lifepillar/vim-solarized8'
Plug 'rakr/vim-one'

" Tool for refactoring
Plug 'dyng/ctrlsf.vim'

" Plugin for Git
Plug 'lambdalisue/gina.vim'

" Plug 'tpope/vim-fugitive'
Plug 'jreybert/vimagit'

" Cool status bar
Plug 'vim-airline/vim-airline'

" Align pieces of code nicely
Plug 'godlygeek/tabular'

" Html
Plug 'othree/html5.vim'

" Pug
Plug 'digitaltoad/vim-pug', { 'for': 'pug' }

" Slim
Plug 'slim-template/vim-slim', { 'for': ['slim', 'slime'] }

" Consider .editorconfig
Plug 'editorconfig/editorconfig-vim'

" Snippets
Plug 'honza/vim-snippets'

" PHP
Plug 'jwalton512/vim-blade', { 'for': 'php' }
Plug '2072/PHP-Indenting-for-VIm', { 'for': 'php' }
Plug 'StanAngeloff/php.vim', { 'for': 'php' }

" Cool mappings for html editing
Plug 'tpope/vim-ragtag'

" JSON
" Plug 'elzr/vim-json'
Plug 'neoclide/jsonc.vim'

" Typescript
Plug 'HerringtonDarkholme/yats.vim', { 'for': 'typescript' }

" Improve jsx
Plug 'chemzqm/vim-jsx-improve', { 'for': 'javascript' }

" Node plugin
" Plug 'moll/vim-node', { 'for': 'javascript' }

" Emmet
Plug 'mattn/emmet-vim'

" misc plugin
Plug 'xolox/vim-misc'

" Markdown
Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }
Plug 'shime/vim-livedown', { 'for': 'markdown' }

" HAML
Plug 'tpope/vim-haml', { 'for': 'haml' }

" Git
Plug 'tpope/vim-git'

" Ruby
Plug 'vim-ruby/vim-ruby', { 'for': 'ruby' }
Plug 'tpope/vim-rails', { 'for': 'ruby' }
Plug 'tpope/vim-bundler', { 'for': 'ruby' }

" Add 'end' keyword in Ruby
" Plug 'tpope/vim-endwise'
Plug 'michaeljsmith/vim-indent-object'

" Clojure/Scheme/Racket
Plug 'guns/vim-clojure-static', { 'for': 'clojure' }
Plug 'tpope/vim-leiningen', { 'for': 'clojure' }
Plug 'tpope/vim-classpath', { 'for': 'clojure' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'venantius/vim-eastwood', { 'for': 'clojure' }
Plug 'vim-scripts/paredit.vim', { 'for': ['clojure', 'scheme', 'racket'] }
Plug 'wlangstroth/vim-racket', { 'for': 'racket' }

" YAML
Plug 'stephpy/vim-yaml', { 'for': 'yaml' }

" CSV
Plug 'chrisbra/csv.vim', { 'for': 'csv' }

" Docker
Plug 'ekalinin/Dockerfile.vim'

" If using Vim-Plug (recommended. Install from https://github.com/junegunn/vim-plug)
Plug 'reasonml-editor/vim-reason-plus', { 'for': 'reason' }

call plug#end()
" filetype plugin indent on

let mapleader = "s"

" https://github.com/vim/vim/blob/master/runtime/doc/russian.txt
" Enable hotkeys for Russian layout
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz

set visualbell
set autoread
set noeol
set nowrap

if has('mouse')
  set mouse=a
endif

set clipboard=unnamedplus
set relativenumber
set cursorline
set hidden
set foldmethod=syntax
set foldlevelstart=10
set shada=!,'400,<50,s10,h

let javaScript_fold=1         " JavaScript
set wrap
set linebreak
set number
set hlsearch
set ignorecase
set smartcase

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowritebackup
set nowb
set noswapfile

set showcmd       " display incomplete commands
set autowrite     " Automatically :write before running commands

set expandtab
set softtabstop=2
set shiftwidth=2

set splitbelow
set cmdheight=2
set scrolloff=5

" note that must keep noinsert in completeopt, the others is optional
set completeopt=noinsert,menuone,noselect

" supress the annoying 'match x of y', 'The only match' and 'Pattern not
" found' messages
set shortmess+=c

set background=dark
set termguicolors
colorscheme one

" ================ Persistent Undo ==================
" Keep undo history across sessions, by storing in file.
" Only works all the time.
if has('persistent_undo')
  silent !mkdir ~/.vim/backups > /dev/null 2>&1
  set undodir=~/.vim/backups
  set undofile
endif

""" Basics Keymaps

" Turn off linewise keys. Normally, the `j' and `k' keys move the cursor down one entire line. with line wrapping on, this can cause the cursor to actually skip a few lines on the screen because it's moving from line N to line N+1 in the file. I want this to act more visually -- I want `down' to mean the next line on the screen
nmap j gj
nmap k gk

" Map Esc to jj combination
imap jj <Esc>

" Map C-d to C-j
nmap <C-j> <C-d>
nmap <C-k> <C-u>

" Close window
nnoremap <Leader>wd :close<CR>

nnoremap [t :tabprev<CR>
nnoremap ]t :tabnext<CR>

" Close tab
nnoremap <Leader>tc :tabclose<CR>

" <Leader>[1-9] move to window [1-9]
for s:i in range(1, 9)
  execute 'nnoremap <Leader>' . s:i . ' :' . s:i . 'wincmd w<CR>'
endfor

nnoremap <Leader>ka :1 wincmd w<CR>
nnoremap <Leader>ks :2 wincmd w<CR>
nnoremap <Leader>kd :3 wincmd w<CR>
nnoremap <Leader>kf :4 wincmd w<CR>

let g:user_emmet_settings = {
      \  'javascript' : {
      \      'extends' : 'jsx',
      \  },
      \  'javascript.jsx' : {
      \      'extends' : 'javascript',
      \  },
      \}

" Alisases to ]<Space> and [<Space>
nmap <Leader>[ [<Space>
nmap <Leader>] ]<Space>

" Vim-test mappings
nmap <silent><Leader>tn :TestNearest<CR>
nmap <silent><Leader>tf :TestFile<CR>
nmap <silent><Leader>ts :TestSuite<CR>
nmap <silent><Leader>tl :TestLast<CR>
nmap <silent><Leader>. :TestLast<CR>
nmap <silent><Leader>tg :TestVisit<CR>

" tnoremap jj <C-\><C-n>
tnoremap <Esc> <C-\><C-n>
tnoremap <M-[> <C-\><C-n>

" shortcuts for textobj block
xmap b ib
omap b ib
xmap q iq
omap q iq
xmap c iw
omap c iw

" nnoremap <Leader>ga :Gina add %<CR>

" Vim-dispatch
nnoremap <Leader>dd :Dispatch!<CR>
nnoremap <Leader>ds :Dispatch!<CR>
nnoremap <Leader>df :Focus

" vim-fugitive {
" nnoremap <silent> <Leader>gs :Gstatus<CR>
" nnoremap <silent> <Leader>gd :Gdiff<CR>
" nnoremap <silent> <Leader>gc :Gcommit<CR>
" nnoremap <silent> <Leader>gb :Gblame<CR>
" nnoremap <silent> <Leader>gl :Glog<CR>
" nnoremap <silent> <Leader>gp :Git push<CR>
" nnoremap <silent> <Leader>gr :Gread<CR>
" nnoremap <silent> <Leader>gw :Gwrite<CR>
" nnoremap <silent> <Leader>ge :Gedit<CR>
nnoremap <silent> <Leader>gs :Gina status<CR>
nnoremap <silent> <Leader>gd :Gina diff<CR>
nnoremap <silent> <Leader>gc :Gina commit<CR>
nnoremap <silent> <Leader>gb :Gina blame<CR>
nnoremap <silent> <Leader>gl :Gina log<CR>
nnoremap <silent> <Leader>gp :Gina push<CR>

nnoremap <silent> <Leader>gg :SignifyToggle<CR>

" Vimagit
nnoremap <silent> <M-m> :Magit<CR>

let g:magit_discard_untracked_do_delete = 1

" Edit .vimrc
map <leader>vl :e! $MYVIMRC<CR>
map <leader>vr :source $MYVIMRC<CR>

" Vim session
let g:session_autosave = 'yes'
let g:session_autoload = 0

nmap <leader>Ss :SaveSession<CR>
nmap <leader>Sn :SaveSession

nmap <leader>s <plug>(SubversiveSubstituteRange)
xmap <leader>s <plug>(SubversiveSubstituteRange)

nmap <leader>ss <plug>(SubversiveSubstituteWordRange)

nnoremap <Leader>sc :SClose<CR>

" Restart Vim
nnoremap <Leader>sr :RestartVim<CR>

" Set session dir for startify
let g:startify_session_dir = '~/.vim/sessions'
let g:startify_list_order = ['sessions', 'files', 'bookmarks', 'dir']
" let g:ycm_server_python_interpreter = '/Users/bogdan/.pyenv/shims/python3'

" Kill buffer without closing split window
nnoremap <Leader>bd :Bdelete<CR>

" Save buffer
nnoremap <Leader>ww :w!<CR>

autocmd TermOpen * set bufhidden=hide

" Snippets configuration

" Quit vim mappings
nnoremap <Leader>qq :wq<CR>
nnoremap <Leader>qq :q!<CR>
nnoremap <Leader>qa :wqa<CR>
nnoremap <Leader>qr :source ~/.spacevim <bar> :AirlineRefresh<CR>

" Resize window mappings
nmap <leader>W <Plug>WinModeStart

set timeoutlen=1000
set ttimeoutlen=5

" Expand emmet abbreviation
imap jf <Plug>(emmet-expand-abbr)

let g:EasyMotion_smartcase = 1
nmap <Leader>j <Plug>(easymotion-prefix)

" <Leader>f{char} to move to {char}
nmap <Leader>k <Plug>(easymotion-overwin-f)
nmap <Leader>j <Plug>(easymotion-bd-f)

" NERDTree
let g:NERDTreeHijackNetrw = 1
nnoremap <Leader>tt :NERDTreeToggle<CR>

" Vim clap mappings
let g:clap_default_external_filters = "fzy"

nnoremap e :Clap buffers<CR>
nnoremap <Leader>o :Clap files ++finder=rg --files --hidden<CR>
nnoremap <Leader>O :Clap files ++finder=rg --files --no-ignore<CR>
nnoremap <Leader>pa :Clap grep ++query=<cword><CR>
nnoremap <Leader>py :Clap yanks<CR>
nnoremap <Leader>ph :Clap history<CR>
nnoremap <Leader>ch :Clap command_history<CR>
nnoremap <Leader>pc :Clap commits<CR>
"
" Javascript
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_flow = 1

augroup javascript_folding
  au!
  au FileType javascript setlocal foldmethod=syntax
augroup END

" Move between linting errors
nnoremap ]r :ALENextWrap<CR>
nnoremap [r :ALEPreviousWrap<CR>

" Startify
nnoremap <silent><Leader>bh :Startify<CR>

" Multiple cursors mappings
let g:multi_cursor_next_key = '<C-n>'
let g:multi_cursor_prev_key = '<C-p>'
let g:multi_cursor_skip_key = '<C-x>'
let g:multi_cursor_quit_key = '<Esc>'

" ctrlSF
let g:ctrlsf_position = 'right'
let g:ctrlsf_winsize = '50%'
let g:ctrlsf_auto_focus = {
  \ "at": "start"
  \ }
let g:ctrlsf_ackprg = 'rg'

nmap     <Leader>nn <Plug>CtrlSFPrompt
vmap     <Leader>nn <Plug>CtrlSFVwordPath
vmap     <Leader>nf <Plug>CtrlSFVwordExec
nmap     <Leader>nn <Plug>CtrlSFCwordPath
nmap     <Leader>np <Plug>CtrlSFPwordPath
nnoremap <Leader>no :CtrlSFOpen<CR>
nnoremap <Leader>nt :CtrlSFToggle<CR>

" Remove ultisnips expand-trigger
let g:UltiSnipsExpandTrigger = ''

" Better display for messages
set cmdheight=2

" Smaller updatetime for CursorHold & CursorHoldI
set updatetime=1000300

" always show signcolumns
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<C-]>'

" Use <c-space> for trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <C-x><C-o> to complete 'word', 'emoji' and 'include' sources
imap <silent> <C-x><C-o> <Plug>(coc-complete-custom)

" Use `[c` and `]c` for navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gt <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K for show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if &filetype == 'vim'
    execute 'h '.expand('<cword>')
  else
    call CocActionAsync('doHover')
  endif
endfunction

nmap ge :CocCommand explorer<CR>

" Show signature help while editing
autocmd CursorHoldI * silent! call CocActionAsync('showSignatureHelp')

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
vmap <leader>fF  <Plug>(coc-format-selected)
nmap <leader>fF <Plug>(coc-format-selected)

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
vmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)

" Open yank list
nnoremap <silent> <leader>y  :<C-u>CocList -A --normal yank<cr>

" CodeAction for organizing imports
command! -nargs=0 OrganizeImports :exe 'CocCommand tsserver.organizeImports'

" Use `:Format` for format current buffer
command! -nargs=0 Format :call CocAction('format')
command! -nargs=0 Prettier :CocCommand prettier.formatFile

vmap <leader>ff :Prettier<CR>
nmap <leader>ff :Prettier<CR>
nnoremap <Leader>ci :OrganizeImports<CR>

" Add diagnostic info for https://github.com/itchyny/lightline.vim
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'cocstatus', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'cocstatus': 'coc#status'
      \ },
      \ }

" Shortcuts for denite interface
" Show symbols of current buffer
" Search symbols of current workspace
nnoremap <silent> <leader>pw  :<C-u>CocList -I symbols<cr>

let g:vim_markdown_frontmatter = 1
let g:vim_markdown_toc_autofit = 1
let g:lexical#spelllang = ['en_us', 'ru_ru']

let g:ale_php_phpcs_standard = 'PSR2'
let g:ale_lint_on_text_changed = 'never'

let g:ale_linters = {
      \   'markdown': [],
      \   'javascript': ['eslint'],
      \}

let g:ale_fixers = ['prettier', 'eslint']

let g:vim_markdown_folding_disabled = 1

" set text wrapping toggles
nmap <silent> <leader>tw :set invwrap<CR>:set wrap?<CR>

" find merge conflict markers
nmap <silent> <leader>fc <ESC>/\v^[<=>]{7}( .*\|$)<CR>

let NERDTreeIgnore = ['\.pyc$', '\.retry$']

nmap <silent> // :nohlsearch<CR>

let g:nvimux_prefix = '<M-i>'
let g:nvimux_open_term_by_default = 'true'

" Javascript
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_flow = 1

augroup javascript_folding
  au!
  au FileType javascript setlocal foldmethod=syntax
augroup END

" Move between linting errors
nnoremap ]r :ALENextWrap<CR>
nnoremap [r :ALEPreviousWrap<CR>

" Startify
nnoremap <silent><Leader>bh :Startify<CR>

" Multiple cursors mappings
let g:multi_cursor_next_key = '<C-n>'
let g:multi_cursor_prev_key = '<C-p>'
let g:multi_cursor_skip_key = '<C-x>'
let g:multi_cursor_quit_key = '<Esc>'

" ctrlSF
let g:ctrlsf_position = 'right'
let g:ctrlsf_winsize = '40%'

nmap     <Leader>nn <Plug>CtrlSFPrompt
vmap     <Leader>nn <Plug>CtrlSFVwordPath
vmap     <Leader>nf <Plug>CtrlSFVwordExec
nmap     <Leader>nn <Plug>CtrlSFCwordPath
nmap     <Leader>np <Plug>CtrlSFPwordPath
nnoremap <Leader>no :CtrlSFOpen<CR>
nnoremap <Leader>nt :CtrlSFToggle<CR>
inoremap <Leader>nt <Plug>:CtrlSFToggle<CR>

" let g:neoterm_open_in_all_tabs = 1
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_toc_autofit = 1
let g:lexical#spelllang = ['en_us', 'ru_ru']

let g:ale_php_phpcs_standard = 'PSR2'
let g:ale_lint_on_text_changed = 'never'

let g:ale_linters = {
      \   'markdown': [],
      \   'javascript': ['eslint', 'flow'],
      \}

let g:vim_markdown_folding_disabled = 1

" set text wrapping toggles
nmap <silent> <leader>tw :set invwrap<CR>:set wrap?<CR>

" find merge conflict markers
nmap <silent> <leader>fc <ESC>/\v^[<=>]{7}( .*\|$)<CR>

let NERDTreeIgnore = ['\.pyc$', '\.retry$']

nmap <silent> // :nohlsearch<CR>

let g:airline#extensions#ale#enabled = 1
let g:airline_theme = 'one'
