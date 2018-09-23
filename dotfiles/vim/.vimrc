set number                     	    " Show line numbers
set linebreak                  	    " Break lines at word (requires Wrap lines)
set showmatch                  	    " Highlight matching brace
set hlsearch                   	    " Highlight all search results
set smartcase                  	    " Enable smart-case search
set ignorecase                 	    " Always case-insensitive
set incsearch                  	    " Searches for strings incrementally
set autoindent                 	    " Auto-indent new lines
set expandtab                  	    " Use spaces instead of tabs
set shiftwidth=4               	    " Number of auto-indent spaces
set smartindent                	    " Enable smart-indent
set smarttab                   	    " Enable smart-tabs
set softtabstop=4              	    " Number of spaces per Tab
set ruler                      	    " Show row and column ruler information
set undolevels=1000            	    " Number of undo levels
set backspace=indent,eol,start 	    " Backspace behaviour
set mouse=a                         " Allow using mouse
set undoreload=10000                " Max number of lines to save for undo
set cursorline                      " Highlight current row
set clipboard=unnamedplus           " The "+ register corresponds to the CLIPBOARD buffer in X if the +clipboard feature is available (use gvim)
cmap w!! w !sudo tee > /dev/null %  " Allow saving of files as sudo when I forgot to start vim using sudo