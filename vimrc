"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Setup
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
call pathogen#runtime_append_all_bundles()

" Set the encoding
set encoding=utf-8


"""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible
set shell=/bin/sh
set number
set ruler
set nowb
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set smarttab
set autoindent
set smartindent
set backspace=indent,eol,start
set showmatch
set showcmd


"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Wrapping setup
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
set wrap
set linebreak
set nolist " list disables linebreak
set textwidth=0
set wrapmargin=0
set tw=100

" Two Status lines
set laststatus=2

" Tab Completion
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.class,vendor/*,doc/*,tmp/*,log/*


"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Search
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
set hlsearch
set incsearch
set ignorecase
set smartcase

set noswapfile

" Store temporary files in a central spot
set backupdir=~/tmp

" Store swap files into a central spot
set directory+=,~/tmp,$TMP

" Remember more commands and search history
set history=1000

" highlight the current line
set cursorline

" completion
set completefunc=syntaxcomplete#Complete

" Set leader key
let mapleader=","


"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Relative Numbers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
set relativenumber
:au FocusLost * :set number
:au FocusGained * :set relativenumber
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber


"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" White Space
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" highlight tabs and trailing spaces
set listchars=tab:>-,trail:-
set list


"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Easier Navigation with vim windows
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l


"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Setup GUI Color Scheme and Font
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
set t_Co=256
syntax enable

if strftime("%H") > 18
  set background=dark
  colorscheme zenburn
else
  set background=light
  colorscheme EarthsongLight
end

set background=dark
colorscheme zenburn


" set background=dark
" colorscheme base16-railscasts
" colorscheme base16-solarized
" colorscheme zenburn


set guifont=Iconsolata:h18


"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" File indentation
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype on
if has("autocmd")
  filetype plugin indent on
end


"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Execute Ruby in Vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
command! FR set filetype=ruby

" I get bit by this all the time
command! W :w


"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Add files for highlighting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
au BufNewFile,BufRead {Gemfile,Rakefile,Thorfile,config.ru} set filetype=ruby
au BufNewFile,BufRead *.{rake,jbuilder,rabl} set filetype=ruby
au BufNewFile,BufRead *.{json,js,template} set filetype=javascript
au BufNewFile,BufRead *.{coffee} set filetype=javascript
" au BufNewFile,BufRead *.{erb} set filetype=html

" au BufNewFile,BufRead *.{md,markdown,mdown,mkd,mkdn} call s:setMarkup()
au BufNewFile,BufRead *.{markdown,mdown,mkdn,mkd,md} set filetype=markdown

" setup puppet manifest options
au BufRead,BufNewFile *.pp set filetype=puppet

" Set Paste mode
set pastetoggle=<C-r>+

let coffee_compiler = '/usr/local/bin/coffee'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Rename the current file
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! RenameFile()
  let old_name = expand('%')
  let new_name = input('New filename: ', expand('%'), 'file')
  if new_name != '' && new_name != old_name
    exec ':saveas ' . new_name
    exec ':silent !rm ' . old_name
    redraw!
  endif
endfunction
map <Leader>n :call RenameFile()<cr>



"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Visually highlight text and use leader G to copy and private gist it
" thanks Steve Losh
vnoremap <leader>G :w !gist -p -t %:e \| pbcopy<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" git blame
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
vnoremap <Leader>b :<C-U>!git blame <C-R>=expand("%:p") <CR> \| sed -n <C-R>=line("'<") <CR>,<C-R>=line("'>") <CR>p <CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Testing Ruby files
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <Leader>p :w\|!bundle exec rspec --color --order rand --format documentation %<cr>
nnoremap <Leader>t :w\|!ruby -Itest %<cr>
nnoremap <Leader>c :w\|!bundle exec cucumber %<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" clear search buffer when hitting return - Thanks Gary Bernhardt
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
:nnoremap <CR> :nohlsearch<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Resize window
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <Up> <C-W>+
map <Down> <C-W>-
map <Left> <c-w><
map <Right> <c-w>>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Seeing is Believing Function
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" nnoremap <Leader>see :w\|!seeing_is_believing %<cr>
