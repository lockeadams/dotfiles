" Plugins

    " Specify Plugins 
    call plug#begin()
        Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
        Plug 'autozimu/LanguageClient-neovim', {'branch': 'next', 'do': 'bash install.sh'}
        Plug 'junegunn/fzf'
        Plug 'rafaqz/ranger.vim'
        Plug 'Yggdroot/indentLine'
    call plug#end()

    " Deoplete
    let g:deoplete#enable_at_startup = 1

    " Language Server Setup
    let g:LanguageClient_autoStart = 1
    let g:LanguageClient_serverCommands = {
    \ 'java': ['/home/locke/bin/jdtls'],
    \ }

    " Integrate Language Server with Deoplete
    call deoplete#custom#source('LanguageClient', 'min_pattern_length', 1)

" General Settings

    " Colors
    syntax on
    color delek

    " Line Numbers
    set number relativenumber

    " Tabs
    set expandtab softtabstop=4 shiftwidth=4 autoindent

    " Give context when scrolling
    set scrolloff=20

    " Allow mouse usage
    set mouse=a

    " Always show sign column
    set signcolumn=yes

    " Show hanging characters and tab lines
    set list
    set listchars=tab:•\ ,trail:•

" Keymaps

    " Set leader to comma
    let mapleader=","

    " Yank and paste to clipboard w/ leader
    map <leader>y "+y
    map <leader>p "+p

    " Ranger.vim binds
    map <leader>rr :RangerEdit<cr>
    map <leader>rv :RangerVSplit<cr>
    map <leader>rs :RangerSplit<cr>
    map <leader>rt :RangerTab<cr>
    map <leader>ri :RangerInsert<cr>
    map <leader>ra :RangerAppend<cr>
    map <leader>rc :set operatorfunc=RangerChangeOperator<cr>g@
    map <leader>rd :RangerCD<cr>
    map <leader>rld :RangerLCD<cr>

    " LanguageClient map
    nnoremap <F5> :call LanguageClient_contextMenu()<CR>

    " Bracket pair completion
    inoremap {      {}<Left>
    inoremap {<CR>  {<CR>}<Esc>O
    inoremap {{     {
    inoremap {}     {}

    " Parentheses completion
    inoremap (      ()<Left>


