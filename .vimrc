" ~/.vimrc

" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" set softtabstop=4     " 4-space tabs
set ai                  " always set autoindenting on
set bs=2                " allow backspacing over everything in insert mode
set display=uhex        " display unprintable characters as <xx> (hex)
set formatoptions=tcq2  " see help -- basically, auto-wrap nicely @ textwidth
set history=50          " keep 50 lines of command line history
set laststatus=2        " status line always (=1 to restrict to >1-win case)
set list                " show tabs and trailing spaces
exec "set listchars=tab:\ubb\u6f0,trail:\u2591"
set modelines=2         " check first and last 2 lines of file for modeline
set nobackup            " keep a backup file
set hlsearch            " highlight search results
set mouse=n             " scroll with the mouse in normal (not insert) mode
set nofoldenable        " h8 folding
set nostartofline       " keep the cursor in its column as much as possible
set nonumber            " don't use line numbering
set scrolloff=3         " keep the cursor N lines away from top/bottom edges
set showcmd             " show commands as they're being typed
set showmatch           " at ),],}, briefly jump the cursor to opening bracket
set showmode            " show a message when in insert/replace/visual mode
set nosmartindent       " smart indentation (sucks)
set smarttab            " smart tab interpretation
set spellfile=~/.vim/spell/en.utf-8.add " my own words
set spelllang=en_us     " we're #1
set statusline=%m\ %#StatusLineNC#%F%#StatusLine#\ %y%(\ [#%n%R]%)
set statusline+=%=%#StatusLineNC#\ L%l/%L,c%c\ %#StatusLine#\  " pretty status line
set viminfo='20,\"50    " read/write .viminfo, <=50 lines of registers
set viminfo+=h          " at startup, don't highlight old search
set wildmenu wildmode=longest,list,full  " bash-like autocompletion behavior

filetype plugin on      " enable ftplugins
syntax on
set background=dark
colorscheme solarized

" vim: expandtab
