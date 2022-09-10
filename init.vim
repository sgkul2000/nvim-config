let g:mapleader = ','

source $HOME/.config/nvim/plug.vim 
source $HOME/.config/nvim/plugins/nerdtree.vim 
source $HOME/.config/nvim/plugins/coc-config.vim 
source $HOME/.config/nvim/plugins/other-config.vim 
source $HOME/.config/nvim/plugins/LeaderF.vim 
source $HOME/.config/nvim/autocommands.vim 
source $HOME/.config/nvim/mapping.vim 
source $HOME/.config/nvim/plugins/wilder.vim 
source $HOME/.config/nvim/plugins/which-key.vim 
source $HOME/.config/nvim/plugins/neoscroll.vim 


" source $HOME/.config/nvim/fzf.vim 
" source $HOME/.config/nvim/vgit.vim 
" :lua require("vgit-config")

set relativenumber
set number
set smarttab
set cindent
set tabstop=2
set shiftwidth=2
" always uses spaces instead of tab characters
set expandtab
set mouse=a

" colorscheme monoki
colorscheme github_dark_default
