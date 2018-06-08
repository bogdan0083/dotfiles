set nocompatible

call plug#begin('~/.vim/plugged')

" Defaults
Plug 'tpope/vim-sensible'

" Start screen for vim
Plug 'mhinz/vim-startify'

" Multiple cursors
Plug 'terryma/vim-multiple-cursors'

" Easymotion
Plug 'easymotion/vim-easymotion'

" Autoformat
Plug 'Chiel92/vim-autoformat'
Plug 'sbdchd/neoformat'

" Custom text-objects
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-entire'

" Session management
Plug 'xolox/vim-session'

Plug 'tpope/vim-obsession'

" Smart f key
Plug 'rhysd/clever-f.vim'

" Kill buffer
Plug 'moll/vim-bbye'

" Better copy/paste from a terminal
Plug 'lxhillwind/leader-clipboard'

" Highglight unneeded whitespace
Plug 'ntpeters/vim-better-whitespace'

" :set paste automatically on paste
Plug 'ConradIrwin/vim-bracketed-paste'

" Grammar (TODO: set keymaps for this plugin)
Plug 'rhysd/vim-grammarous'

" Completion
" Plug 'autozimu/LanguageClient-neovim', {
"   \ 'branch': 'next',
"   \ 'do': 'bash install.sh',
"   \ }

" nnoremap <F5> :call LanguageClient_contextMenu()<CR>
" Or map each action separately
" nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
" nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
" nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>
Plug 'roxma/nvim-completion-manager'
Plug 'roxma/ncm-rct-complete'
Plug 'fgrsnau/ncm-otherbuf'
" Autopairs for brackets
Plug 'jiangmiao/auto-pairs'
" Plug 'sourcegraph/javascript-typescript-langserver', {'do': 'npm install && npm run build'}

" Must have
Plug 'tpope/vim-surround'

" Much nicer text objects
" Plug 'wellle/targets.vim'
Plug 'rhysd/vim-textobj-anyblock'

" Syntax-checker
Plug 'w0rp/ale'

" NERDTree
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Easy commenting
Plug 'tomtom/tcomment_vim'

" Repeat for plugins
Plug 'tpope/vim-repeat'

" Additional useful keymappings
Plug 'tpope/vim-unimpaired'

" FZF for vim
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Colorscheme
" Plug 'nanotech/gruvbox.vim'
Plug 'flazz/vim-colorschemes'
Plug 'lifepillar/vim-solarized8'
Plug 'sickill/vim-monokai'

" Tool for refactoring
Plug 'dyng/ctrlsf.vim'

" Plugin for Git
Plug 'tpope/vim-fugitive'

" Cool status bar
Plug 'vim-airline/vim-airline'

" TODO: have no idea it is needed or not
" Plug 'tpope/vim-projectionist'

" Something useful i guess
" (have no idea what it is)
Plug 'tpope/vim-dispatch'

" Align pieces of code nicely
Plug 'godlygeek/tabular'

" Html
Plug 'othree/html5.vim'

" Pug
Plug 'digitaltoad/vim-pug', { 'for': 'pug' }

" Slim
Plug 'slim-template/vim-slim', { 'for': ['slim', 'slime'] }

" Syntax plugins for elixir. May need this later
" Plug 'elixir-editors/vim-elixir', { 'for': 'elixir' }
" Plug 'c-brenn/phoenix.vim', { 'for': 'elixir' }
" Plug 'slashmili/alchemist.vim', { 'for': 'elixir' }
" Plug 'rhysd/vim-grammarous'

" Consider .editorconfig
Plug 'editorconfig/editorconfig-vim'

" Snippets
Plug 'honza/vim-snippets'

" Not sure if i need this
" Plug 'flowtype/vim-flow'

" PHP
" Plug 'felixfbecker/php-language-server', { 'for': 'php', 'do': 'composer install && composer run-script parse-stubs'}
Plug 'jwalton512/vim-blade', { 'for': 'php' }
Plug '2072/PHP-Indenting-for-VIm', { 'for': 'php' }
Plug 'StanAngeloff/php.vim', { 'for': 'php' }

" Multiple language debugger
" TODO: check out how to use it
Plug 'joonty/vdebug', { 'on': 'VdebugStart' }

" NOTE: not sure if i need this
" Plug 'rhysd/vim-clang-format'

" Cool mappings for html editing
Plug 'tpope/vim-ragtag'

" JSON
Plug 'elzr/vim-json'

" jsx
" TODO: turn it on?
Plug 'mxw/vim-jsx'
" Javascript
" Plug 'othree/yajs.vim'
Plug 'pangloss/vim-javascript'

" Improve jsx
Plug 'chemzqm/vim-jsx-improve', { 'for': 'javascript' }

" Node plugin
Plug 'moll/vim-node', { 'for': 'javascript' }

" Emmet
Plug 'mattn/emmet-vim'

" misc plugin
Plug 'xolox/vim-misc'

" Easytags
Plug 'xolox/vim-easytags'

" Hightlight enclosing html/xml tags
Plug 'Valloric/MatchTagAlways'

" Indent guides
Plug 'nathanaelkane/vim-indent-guides'

" Test plugin
Plug 'janko-m/vim-test'

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
Plug 'tpope/vim-endwise'
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

call plug#end()
" filetype plugin indent on

let mapleader = "s"

" https://github.com/vim/vim/blob/master/runtime/doc/russian.txt
" Enable hotkeys for Russian layout
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz

set visualbell

if has('mouse')
  set mouse=a
endif

set relativenumber
set cursorline
set hidden
" set foldmethod=indent
set foldlevelstart=10
set foldlevel=1
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
set cmdheight=1
set scrolloff=5

set background=dark
set termguicolors
colorscheme solarized8_dark_high

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

" Close window
nnoremap <Leader>wd :close<CR>

" Use TAB to switch buffer
map <Tab> :bn<CR>
map <S-Tab> :bp<CR>

" Use Ctrl-Tab and Alt-Tab to switch tab
map    <C-Tab>  :tabnext<CR>
imap   <C-Tab>  <C-O>:tabnext<CR>
map    <M-Tab>  :tabprev<CR>
imap   <M-Tab>  <C-O>:tabprev<CR>

" <Leader>[1-9] move to window [1-9]
for s:i in range(1, 9)
  execute 'nnoremap <Leader>' . s:i . ' :' . s:i . 'wincmd w<CR>'
endfor

" <Leader><leader>[1-9] move to tab [1-9]
for s:i in range(1, 9)
  execute 'nnoremap <Leader><Leader>' . s:i . ' ' . s:i . 'gt'
endfor

let g:user_emmet_settings = {
\  'javascript' : {
\      'extends' : 'jsx',
\  },
\  'javascript.jsx' : {
\      'extends' : 'javascript',
\  },
\}

" <Leader>b[1-9] move to buffer [1-9]
for s:i in range(1, 9)
  execute 'nnoremap <Leader>b' . s:i . ' :b' . s:i . '<CR>'
endfor

" Map ctrl-movement keys to window switching
map <C-k> <C-w><Up>
map <C-j> <C-w><Down>
map <C-l> <C-w><Right>
map <C-h> <C-w><Left>

" Alisases to ]<Space> and [<Space>
nmap <Leader>[ [<Space>
nmap <Leader>] ]<Space>

" Vim-test mappings
nmap <silent><Leader>tn :TestNearest<CR>
nmap <silent><Leader>tf :TestFile<CR>
nmap <silent><Leader>ts :TestSuite<CR>
nmap <silent><Leader>tl :TestLast<CR>
nmap <silent><Leader>tg :TestVisit<CR>

" nnoremap <C-I> g;
" nnoremap <C-O> g,

" shortcuts for textobj block
xmap a; ab
omap a; ab
xmap i; ib
omap i; ib
xmap ; ib
omap ; ib

nnoremap <Leader>gA :Git add -A<CR>

" Auto indent pasted text
" nnoremap p p=`]<C-o>
" nnoremap P P=`]<C-o>

" Edit .vimrc
map <leader>vl :e! $MYVIMRC<CR>
map <leader>vr :source $MYVIMRC<CR>

" Vim session
let g:session_autosave = 'yes'

" session mapping
nnoremap <Leader>ss :SaveSession!<CR>
nnoremap <Leader>sl :OpenSession<CR>
nnoremap <Leader>sn :SaveSession

nnoremap <Leader>sc :SClose<CR>

" Restart Vim
nnoremap <Leader>sr :RestartVim<CR>

" Set session dir for startify
let g:startify_session_dir = '~/.vim/sessions'
let g:startify_list_order = ['sessions', 'files', 'bookmarks', 'dir']

" Kill buffer without closing split window
nnoremap <Leader>bd :Bdelete<CR>

" Save buffer
nnoremap <Leader>ww :w!<CR>

" Terminal emulator mappings
tnoremap <Esc> <C-\><C-n>
autocmd TermOpen * set bufhidden=hide

" Quit vim mappings
nnoremap <Leader>qq :wq<CR>
nnoremap <Leader>qQ :q!<CR>
nnoremap <Leader>qa :wqa<CR>
nnoremap <Leader>qr :source ~/.spacevim <bar> :AirlineRefresh<CR>

" Resize window mappings
map <M-]> :resize +5<CR>
map <M-[> :resize -5<CR>
map <M-9> :vertical resize +5<CR>
map <M-0> :vertical resize -5<CR>

" Go to tag definition
nnoremap gd <C-]>

set timeout ttimeoutlen=50

" Expand emmet abbreviation
imap jf <Plug>(emmet-expand-abbr)

let g:EasyMotion_smartcase = 1
nmap <Leader>j <Plug>(easymotion-prefix)

" <Leader>f{char} to move to {char}
map  <Leader>k <Plug>(easymotion-bd-f)
nmap <Leader>k <Plug>(easymotion-overwin-f)

" NERDTree
let g:NERDTreeHijackNetrw = 1
nnoremap <Leader>tf :NERDTreeFind<CR>
nnoremap <Leader>tt :NERDTreeToggle<CR>

" FZF settings and mappings
command! -bang -nargs=* Ag call fzf#vim#ag(<q-args>, {'options': '--delimiter : --nth 4..'}, <bang>0)
nnoremap <Leader>pa :Ag<CR>
nnoremap <Leader>o :GFiles<CR>
nnoremap <Space> :Buffers<CR>
nnoremap <C-Space> :GFiles<CR>
nnoremap <Leader>ph :History<CR>
nnoremap <Leader>pt :Tags<CR>

" Prettier
nnoremap <Leader>pp :Neoformat prettiereslint<CR>
inoremap <expr> <C-j> pumvisible() ? "\<C-N>" : "\<C-j>"
inoremap <expr> <C-k> pumvisible() ? "\<C-P>" : "\<C-k>"

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

" nvim-completion-manager
let g:cm_matcher = {'module': 'cm_matchers.fuzzy_matcher', 'case': 'smartcase'}
let g:cm_refresh_length = [[1,2],[7,3]]
let g:cm_sources_override = {
      \ 'cm-filepath': {'priority': 4},
      \ 'cm-tags': {'enable':0}
      \ }

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

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
inoremap <Leader>nt <Esc>:CtrlSFToggle<CR>

" LanguageClient settings

nnoremap <silent> K :call LanguageClient_textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient_textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient_textDocument_rename()<CR>

let g:LanguageClient_autoStart = 1

" \ 'php': ['php', expand('~/.vim/plugged/php-language-server/bin/php-language-server.php')],
" \ 'ruby': ['language_server-ruby'],

let g:LanguageClient_serverCommands = {
  \ 'javascript': ['node', expand('~/.vim/plugged/javascript-typescript-langserver/lib/language-server-stdio.js')],
  \ 'javascript.jsx': ['node', expand('~/.vim/plugged/javascript-typescript-langserver/lib/language-server-stdio.js')],
  \ }

let g:vim_markdown_frontmatter = 1
let g:vim_markdown_toc_autofit = 1
let g:lexical#spelllang = ['en_us', 'ru_ru']

let g:ale_php_phpcs_standard = 'PSR2'

let g:ale_linters = {
  \   'markdown': [],
  \   'javascript': ['eslint'],
  \}

" let g:acp_enableAtStartup = 0

" TODO: setup vim-easytags

" let g:easytags_async = 1

" Automatically removing all trailing whitespace
" autocmd BufWritePre * :%s/\s\+$//e

let g:vim_markdown_folding_disabled = 1

nnoremap <silent> K :call LanguageClient_textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient_textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient_textDocument_rename()<CR>

" Autoformat buffer
nnoremap <Leader>ff :Autoformat<CR>

" set text wrapping toggles
nmap <silent> <leader>tw :set invwrap<CR>:set wrap?<CR>

" find merge conflict markers
nmap <silent> <leader>fc <ESC>/\v^[<=>]{7}( .*\|$)<CR>

let NERDTreeIgnore = ['\.pyc$', '\.retry$']

nmap <silent> // :nohlsearch<CR>

" Allows you to enter sudo pass and save the file
" " when you forgot to open your file with sudo
cmap w!! %!sudo tee > /dev/null %

" nnoremap <silent> <bs> <C-w><Left>

let g:bufExplorerDisableDefaultKeyMapping=1
let g:bufExplorerShowRelativePath=1

" let g:deoplete#enable_at_startup = 1

let g:airline#extensions#ale#enabled = 1

function! neoformat#formatters#javascript#prettiereslint() abort
  return {
  \ 'exe': 'prettier-eslint',
  \ 'args': ['--stdin', '--stdin-filepath', '%:p', '--print-width 90'],
  \ 'stdin': 1,
  \ }
endfunction

augroup common
  autocmd BufEnter * EnableStripWhitespaceOnSave
augroup END

" augroup filetypedetect
"   autocmd!
"   au BufEnter *.markdown,*.mkd,*.md setl wrap tw=79
"   au BufEnter *.json setl ft=javascript
"   au BufEnter *.coffee setl sw=2 expandtab
"   au BufEnter *.py setl ts=4 sw=4 sts=4
"   autocmd BufEnter *.php setlocal ts=4 sw=4 sts=4
"   autocmd BufNewFile,BufRead *.slim setlocal filetype=slim
"   autocmd BufNewFile,BufRead *.slime setlocal filetype=slim
"   au BufEnter *.js setl ts=2 sw=2 sts=2
"   au BufEnter *.html setl ts=4 sw=4 sts=4
"   au BufEnter *.tex setl wrap tw=79 fo=tcqor
"   au BufEnter *.[ch] setl cindent
"   au BufEnter *.[ch]pp setl cindent
"   au BufEnter Makefile setl ts=4 sts=4 sw=4 noet list
"   au BufEnter *.es6 setf javascript
" augroup END
