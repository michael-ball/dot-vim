set shell=/bin/bash
execute pathogen#infect()
let mapleader = ","
set rnu
set number
syntax on
set hlsearch
set incsearch
set backspace=indent,eol,start
filetype on
filetype plugin on
filetype plugin indent on
set encoding=utf-8

set et
set sw=4
set smarttab
set tags=./tags;,tags
set smartindent

set completeopt=longest,menuone

set sessionoptions+=resize

inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <expr> <C-n> pumvisible() ? '<C-n>' :
  \ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

inoremap <expr> <M-,> pumvisible() ? '<C-n>' :
  \ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

let base16colorspace=256
set background=dark
colors base16-default 
set guioptions+=mTLlRr
set guioptions-=mTLlRr
set guifont=Envy\ Code\ R\ for\ Powerline\ 10

nmap <C-V> "+gP
imap <C-V> <ESC><C-V>i
vmap <C-C> "+y

set omnifunc=syntaxcomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
set completeopt+=menuone,preview

let g:tagbar_phpctags_bin='~/bin/phpctags'
let g:tagbar_phpctags_memory_limit = '512M'


"gtags
map <C-\> :Gtags -r<CR><CR>

let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_auto_jump=1
let g:syntastic_style_error_symbol='✗'
let g:syntastic_style_warning_symbol='❗'
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_php_checkers=['php', 'phpcs -n']
let g:syntastic_javascript_checkers=['jshint']

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline_section_z = '%3p%%'

let g:miniBufExplorerAutoStart = 0

map <silent> <F11>
\    :call system("wmctrl -ir " . v:windowid . " -b toggle,fullscreen")<CR>

let g:gitgutter_sign_added = '█'
let g:gitgutter_sign_modified = '█'
let g:gitgutter_sign_removed = '█'
let g:gitgutter_sign_modified_removed = '█'
let g:gitgutter_realtime = 0
"let g:gitgutter_enabled = 0
let g:gitgutter_diff_args = '-w --ignore-blank-lines'
let g:tern_map_keys=1
let tern_show_argument_hints = "on_hold"
let tern_show_signature_in_pum = 1

let g:easytags_cmd = '/usr/bin/ctags'
let g:easytags_languages = {
            \   'javascript': {
            \     'cmd': '/usr/bin/jsctags',
            \       'args': [],
            \       'fileoutput_opt': '-f',
            \       'stdout_opt': '-f-',
            \   },
            \   'php': {
            \     'cmd': '~/bin/phpctags',
            \       'args': ['--memory=512M'],
            \       'fileoutput_opt': '-f',
            \       'stdout_opt': '-f-',
            \       'recurse_flag': '-R'
            \   }
            \}

let g:easytags_dynamic_files = 1
let g:easytags_updatetime_warn = 0
let g:easytags_events = ['BufWritePost']

let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
let g:indent_guides_exclude_filetypes = ['help', 'nerdtree', 'Tagbar']
let g:indent_guides_enable_on_vim_startup = 1

let g:session_autoload = 'yes'
let g:session_autosave = 'no'

let g:ctrlp_extensions = ['tag', 'buffertag', 'quickfix', 'dir', 'undo', 'line']
let g:ctrlp_buftag_typess = {
            \   'javascript': {
            \     'bin': '/usr/bin/jsctags',
            \     'args': '-f -',
            \   },
            \   'php': {
            \     'cmd': '~/bin/phpctags',
            \     'args': '-f -',
            \   }
            \}
