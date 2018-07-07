"""""""""""""""""""""""""""""""""""""
" Amirfeqhi Vimrc configuration
"""""""""""""""""""""""""""""""""""""
set nocompatible
syntax on
set nowrap
set encoding=UTF-8
set mouse=a
set re=1
set cursorline
set colorcolumn=80
set omnifunc=syntaxcomplete#Complete
" set nuw=1

"""" START Vundle Configuration

" Disable file type for vundle
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Utility
Plugin 'scrooloose/nerdtree'
Plugin 'ervandew/supertab'
Plugin 'SirVer/ultisnips'
" Plugin 'benmills/vimux'
" Plugin 'Shougo/vimproc.vim'
Plugin 'powerline/powerline'

" Generic Programming Support
Plugin 'honza/vim-snippets'
" Plugin 'janko-m/vim-test'
Plugin 'Townk/vim-autoclose'
" Plugin 'vim-syntastic/syntastic'
Plugin 'Valloric/MatchTagAlways'
Plugin 'w0rp/ale'

" Markdown / Writting
" Plugin 'reedes/vim-pencil'
" Plugin 'tpope/vim-markdown'
" Plugin 'jtratner/vim-flavored-markdown'

" Git Support
Plugin 'kablamo/vim-git-log'
Plugin 'tpope/vim-fugitive'

" Theme / Interface
" Plugin 'AnsiEsc.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ryanoasis/vim-devicons'
Plugin 'chriskempson/base16-vim'
Plugin 'dracula/vim'
Plugin 'Yggdroot/indentLine'

" Autocomplete
Plugin 'Valloric/YouCompleteMe'

" OSX stupid backspace fix
set backspace=indent,eol,start

call vundle#end()
filetype plugin indent on

"""" END Vundle Configuration

"""""""""""""""""""""""""""""""""""""
" Configuration Section
"""""""""""""""""""""""""""""""""""""

" Show linenumbers
set number
set ruler

" Set Proper Tabs
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab

" Always display the status line
set laststatus=2

" Theme and Styling
set t_Co=256
set background=dark

if (has("termguicolors"))
  set termguicolors
endif

color dracula
let base16colorspace=256    " Access colors present in 256 colorspace
highlight Normal guibg=#1e1f28
highlight LineNr guibg=#2e3038 guifg=#a5a6a7
highlight CursorLineNr guibg=#1e1f28
highlight CursorLine guibg=#303244
highlight Pmenu guibg=#292c33
highlight VertSplit guibg=#444758 guifg=#444758

" Vim-Airline Configuration
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#show_tabs = 1
let g:airline#extensions#tabline#show_tab_nr = 0
let g:airline#extensions#tabline#show_tab_type = 0
let g:airline#extensions#tabline#close_symbol = '×'
let g:airline#extensions#tabline#show_close_button = 0
let g:airline_powerline_fonts = 1
let g:airline_theme='violet'
let g:Powerline_symbols='fancy'
let g:hybrid_custom_term_colors = 1
let g:hybrid_reduced_contrast = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" Markdown Syntax Support
augroup markdown
  au!
  au BufNewFile,BufRead *.md,*.markdown setlocal filetype=ghmarkdown
augroup END

" Vim-Supertab Configuration
let g:SuperTabDefaultCompletionType = "<C-X><C-O>"

" Vim-pencil Configuration
augroup pencil
  autocmd!
  autocmd FileType markdown,mkd call pencil#init()
  autocmd FileType text         call pencil#init()
augroup END

" Vim-UtilSnips Configuration
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"

" IndentLine Configuration
let g:indentLine_char = '|'
let g:indentLine_concealcursor=0

" YCM Configuration
let g:ycm_key_list_select_completion = []
let g:ycm_key_list_previous_completion = []
let g:ycm_key_list_stop_completion = ['<Enter>']
let g:ycm_min_num_of_chars_for_completion = 1
let g:ycm_auto_trigger = 1
" let g:ycm_show_diagnostics_ui = 0
" let g:pymode_rope_complete_on_dot = 0
set completeopt-=preview

" Auto-Close Configuration
let g:AutoClosePumvisible = {"ENTER": "", "ESC": ""}

" Vim-Syntastic Configuration
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 0
" let g:syntastic_check_on_open = 0
" let g:syntastic_check_on_wq = 0
" let g:syntastic_check_on_w = 1
" let g:syntastic_enable_highlighting = 0
" let g:syntastic_error_symbol = "✗"
" let g:syntastic_warning_symbol = "⚠"
" let g:syntastic_mode_map = { 'passive_filetypes': ['python'] }

" ALE Configuration
let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚠'
let g:airline#extensions#ale#enabled = 1

" Devicons configuration
let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_enable_airline_statusline = 1

"""""""""""""""""""""""""""""""""""""
" Mappings configurationn
"""""""""""""""""""""""""""""""""""""
map <C-n> :NERDTreeToggle<CR>
map <C-m> :TagbarToggle<CR>
au VimEnter *  NERDTree

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

map <silent> w :EraseBadWhitespace<CR>

" Highlight all instances of word under cursor, when idle.
" Useful when studying strange source code.
" Type z/ to toggle highlighting on/off.
nnoremap z/ :if AutoHighlightToggle()<Bar>set hls<Bar>endif<CR>
function! AutoHighlightToggle()
  let @/ = ''
  if exists('#auto_highlight')
    au! auto_highlight
    augroup! auto_highlight
    setl updatetime=4000
    echo 'Highlight current word: off'
    return 0
  else
    augroup auto_highlight
      au!
      au CursorHold * let @/ = '\V\<'.escape(expand('<cword>'), '\').'\>'
    augroup end
    setl updatetime=500
    echo 'Highlight current word: ON'
    return 1
  endif
endfunction

imap <C-Return> <CR><CR><C-o>k<Tab>
