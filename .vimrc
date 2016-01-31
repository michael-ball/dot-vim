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

" Only do this part when compiled with support for autocommands.
if has("autocmd")
    " Use filetype detection and file-based automatic indenting.
    filetype plugin indent on

    " Use actual tab chars in Makefiles.
    autocmd FileType make set tabstop=8 shiftwidth=8 softtabstop=0 noexpandtab
endif
set et
set cc=80
set nowrap
set sw=4
set smarttab
set tags=./tags;,tags
filetype plugin indent on
set encoding=utf-8

set completeopt=longest,menuone

set sessionoptions+=resize
set sessionoptions-=options

inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <expr> <C-n> pumvisible() ? '<C-n>' :
            \ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

inoremap <expr> <M-,> pumvisible() ? '<C-n>' :
            \ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
if !has("gui_running")
    let base16colorspace=256
endif
set background=dark
colors base16-eighties
set guioptions+=mTLlRr
set guioptions-=mTLlRr
set guifont=Input\ Mono\ Compressed\ 8
let g:airline_theme='base16'

nmap <C-V> "+gP
imap <C-V> <ESC><C-V>i
vmap <C-C> "+y

set omnifunc=syntaxcomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
set completeopt+=menuone,preview

let g:tagbar_phpctags_bin='phpctags'
let g:tagbar_phpctags_memory_limit = '512M'

let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_auto_jump=1
let g:syntastic_style_error_symbol='✗'
let g:syntastic_style_warning_symbol='❗'
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_aggregate_errors = 1
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
"let g:gitgutter_realtime = 0
"let g:gitgutter_enabled = 0
let g:gitgutter_diff_args = '-w --ignore-blank-lines'
let g:tern_map_keys=1
let tern_show_argument_hints = "on_hold"
let tern_show_signature_in_pum = 1

let g:easytags_cmd = '/usr/bin/ctags'
let g:easytags_languages = {
            \   'javascript': {
            \     'cmd': '/usr/local/bin/jsctags',
            \       'args': [],
            \       'fileoutput_opt': '-f',
            \       'stdout_opt': '-f-',
            \   },
            \   'php': {
            \     'cmd': 'phpctags',
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
let g:indent_guides_exclude_filetypes = ['help', 'nerdtree', '__Tagbar__']
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
inoremap {<CR> {<CR>}<C-o>O 

set csprg=gtags-cscope
cs add GTAGS
let g:Gtags_Auto_Update = 1
" Map Ctrl + r to gtags reference search
nmap <C-r> :Gtags -r<CR><CR>

if has ("cscope")
    set cscopetag

    set csto=0

    if filereadable("cscope.out")
        cs add cscope.out
    elseif $CSCOPE_DB != ""
        cs add $CSCOPE_DB
    endif

    set cscopeverbose
endif

noremap <F3> :Autoformat<CR>
