if &compatible
set nocompatible
endif

" Required:
set runtimepath+=/home/adminlx/tools/vim/repos/github.com/Shougo/dein.vim
set laststatus=2
set ttimeoutlen=50
set encoding=utf-8
set t_Co=16
set number
set updatetime=250

" Required:
call dein#begin('/home/adminlx/tools/vim')

" Let dein manage dein
 " Required:
call dein#add('Shougo/dein.vim')

" Add or remove your plugins here:
call dein#add('Shougo/neosnippet.vim')
call dein#add('Shougo/neosnippet-snippets')

" You can specify revision/branch/tag.
call dein#add('Shougo/vimshell', { 'rev': '3787e5' })
call dein#add('gabesoft/vim-ags')
call dein#add('tpope/vim-fugitive')
call dein#add('airblade/vim-gitgutter')
call dein#add('vim-airline/vim-airline')
call dein#add('vim-airline/vim-airline-themes')
call dein#add('altercation/vim-colors-solarized')
call dein#add('davidhalter/jedi-vim')
call dein#add('pangloss/vim-javascript')
call dein#add('mxw/vim-jsx')
call dein#end()

colorscheme solarized
syntax enable
set background=dark

let g:gitgutter_highlight_lines = 0
let g:airline_powerline_fonts = 1
let g:solarized_termcolors=16
let g:ags_agexe = 'ag' 
let g:jedi#auto_vim_configuration = 1
let g:jsx_ext_required = 0

filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif
