" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'scrooloose/nerdtree'

Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

Plug 'ryanoasis/vim-devicons'

" git gutter plugin
Plug 'airblade/vim-gitgutter'

" git lens
" Dependencies
" Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
" Plug 'nvim-lua/plenary.nvim'
" Plug 'tanvirtin/vgit.nvim'

" control p: fuzzy file finder
" Plug 'ctrlpvim/ctrlp.vim' " fuzzy find files
"

" LeaderF fuzzy file and other finders
Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }

" search in browser plugin
Plug 'tyru/open-browser.vim'

" hop plugin
Plug 'phaazon/hop.nvim'

" for better paranthesis detection
Plug 'Raimondi/delimitMate'

" wilder command line autocompletion
if has('nvim')
  function! UpdateRemotePlugins(...)
    " Needed to refresh runtime files
    let &rtp=&rtp
    UpdateRemotePlugins
  endfunction

  Plug 'gelguy/wilder.nvim', { 'do': function('UpdateRemotePlugins') }
else
  Plug 'gelguy/wilder.nvim'

  " To use Python remote plugin features in Vim, can be skipped
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

" Vim Script
Plug 'folke/which-key.nvim'

" smooth scrolling for neovim
Plug 'karb94/neoscroll.nvim'

Plug 'christoomey/vim-tmux-navigator'

" Comments manager
Plug 'tpope/vim-commentary'
Plug 'suy/vim-context-commentstring'

" Python plugin for vim
Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }



" Emmet 
Plug 'mattn/emmet-vim'

" clipboard plugin
Plug 'christoomey/vim-system-copy'

" wakatime
Plug 'wakatime/vim-wakatime'


" Misc(the other plugin did not work for ben awad)
"Plug 'tsony-tsonev/nerdtree-git-plugin'


" Theme
Plug 'sickill/vim-monokai'
Plug 'projekt0n/github-nvim-theme'

" Syntax highlighting for pug
Plug 'digitaltoad/vim-pug'


"fzf and Rg 

" Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
" Plug 'junegunn/fzf.vim'
" Plug 'airblade/vim-rooter'

" vue plugin
Plug 'posva/vim-vue'

" react plugin
" Plug 'HerringtonDarkholme/yats.vim'

" golang setup
" Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

Plug 'othree/html5.vim'

 "Initialize plugin system


 "Discord RPC


 " vim-prettier
" Plug 'prettier/vim-prettier', {
"   \ 'do': 'yarn install',
"   \ 'branch': 'release/0.x'
"   \ }





" Markdown preview
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }

Plug 'github/copilot.vim'


call plug#end()


