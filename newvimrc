""
"" Janus setup
""

" Define paths
let g:janus_path = escape(fnamemodify(resolve(expand("<sfile>:p")), ":h"), ' ')
let g:janus_vim_path = escape(fnamemodify(resolve(expand("<sfile>:p" . "vim")), ":h"), ' ')
let g:janus_custom_path = expand("~/.janus")

" Source janus's core
exe 'source ' . g:janus_vim_path . '/core/before/plugin/janus.vim'

" You should note that groups will be processed by Pathogen in reverse
" order they were added.
call janus#add_group("tools")
call janus#add_group("langs")
call janus#add_group("colors")


let Tlist_Ctags_Cmd='/usr/local/bin/ctags'

""
"" Customisations

"" Google search
function! Terms()
  call inputsave()
  let searchterm = input('Search: ')
  call inputrestore()
  return searchterm
endfunction
map © <ESC>:! /usr/bin/open -a "/Applications/Google Chrome.app" 'https://google.com/search?q=<C-R>=Terms()<CR>'<CR><CR>

" Zencoding
let g:user_zen_expandabbr_key='<c-e>'
let g:snipMate = {}
let g:snipMate.scope_aliases = {}    
let g:snipMate.scope_aliases['ruby'] = 'ruby,ruby-rails,ruby-factorygirl,ruby-rspec,ruby-shoula'
let g:snipMate.scope_aliases['rb'] = 'ruby,ruby-rails,ruby-factorygirl,ruby-rspec,ruby-shoula'
let g:snipMate.scope_aliases['scss'] = 'css'
let g:snipMate.scope_aliases['erb'] = 'erb,html'

" Map space to / (search) and c-space to ? (backgwards search)
map <space> /
map <silent> <leader><cr> :noh<cr>


" Zoomwin alias
map <c-space> :ZoomWin<cr>

" Smart way to move btw. windows
map <up> <C-W>j
map <down> <C-W>k
map <left> <C-W>h
map <right> <C-W>l

" Close the current buffer
map <leader>bd :Bclose<cr>

" Close all the buffers
map <leader>ba :1,300 bd!<cr>

" Use the arrows to something usefull
"map <right> :bn<cr>
"map <left> :bp<cr>

" use kj for esc in insert mode
imap kj <esc>

" fix paste mode
set pastetoggle=<f2>

map <leader>ww <C-w><C-w>

" Tab configuration
map <leader>tn :tabnew<cr>
map <leader>te :tabedit
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove

" Tab completion
imap <Tab> <C-P>
set complete=.,b,u,]
set completeopt=menu,preview
set wildmode=longest,list:longest

if filereadable(expand("~/.vimrc.before"))
  source ~/.vimrc.before
endif


" Disable plugins prior to loading pathogen
exe 'source ' . g:janus_vim_path . '/core/plugins.vim'

""
"" Pathogen setup
""

" Load all groups, custom dir, and janus core
call janus#load_pathogen()

" .vimrc.after is loaded after the plugins have loaded

if has("gui_running")
  set guioptions=egmrt
endif

let mapleader = ","
let g:solarized_termcolors=256

syntax enable
set background=dark
colorscheme solarized

