set nocompatible


call plug#begin('~/.vim/plugged')
"Plug 'w0rp/ale/'
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'joshdick/onedark.vim'
Plug 'preservim/nerdtree'
Plug 'octol/vim-cpp-enhanced-highlight'
"Plug 'Valloric/YouCompleteMe'
call plug#end()

syntax on
colorscheme onedark

filetype plugin indent on

let python_highlight_all=1

set wildmenu
set showcmd " Show partial commands in the last line of the screen
set hlsearch " Set highlighting in searching
set ignorecase " Use case insensitive search, except when using capital letters
set number relativenumber " show line numbers, make them relative
set smartcase
set laststatus=2 " Always show statusline
set encoding=utf-8
set ttyfast
set so=8 " avoid cursor getting to extreme bottom/top
set foldmethod=indent
set foldlevel=99

"Information on the following setting can be found with
":help set
set tabstop=4
set expandtab
set autoindent
set shiftwidth=4  "this is the level of autoindent, adjust to taste
set ruler


set backspace=indent,eol,start
set visualbell

" Show tab and trailing whitespace characters
set listchars=tab:>-,trail:-
set list!

" Uncomment below to make screen not flash on error
" set vb t_vb=""

" Disable ale by default - toggle using :ALEToggle
"let g:ale_enabled = 0


"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

" NerdTree
nnoremap <Leader><Space> :NERDTreeToggle<Enter>
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

" C++ highlighting
"
" Highlighting of class scope is disabled by default. To enable set
"let g:cpp_class_scope_highlight = 1

" Highlighting of member variables is disabled by default. To enable set
"let g:cpp_member_variable_highlight = 1

" Highlighting of class names in declarations is disabled by default. To enable set
"let g:cpp_class_decl_highlight = 1

" Highlighting of POSIX functions is disabled by default. To enable set
"let g:cpp_posix_standard = 1

" There are two ways to highlight template functions. Either
"let g:cpp_experimental_simple_template_highlight = 1

" which works in most cases, but can be a little slow on large files. Alternatively set
"let g:cpp_experimental_template_highlight = 1
