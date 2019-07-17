"" ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
"" ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
"" ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
"" ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
"" ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
"" ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝

"" plugins

    call plug#begin()
        Plug 'Yggdroot/indentLine'
        Plug 'arcticicestudio/nord-vim'
        Plug 'ycm-core/YouCompleteMe'
        Plug 'w0rp/ale'
        Plug 'chrisbra/Colorizer'
    call plug#end()

"" general settings

    syntax on
    set number relativenumber
    set expandtab softtabstop=4 shiftwidth=4 autoindent
    set scrolloff=20
    set mouse=a
    set signcolumn=yes
    set list
    set listchars=tab:•\ ,trail:•
    colorscheme nord

"" keymaps

    " set leader to comma
    let mapleader=","

    " yank and paste to clipboard w/ leader
    map <leader>y "+y
    map <leader>p "+p

    " run python code in new shell
    autocmd FileType python nnoremap <buffer> <F9> :exec '!python' shellescape(@%, 1)<cr>

"" ycm settings

    let g:ycm_autoclose_preview_window_after_completion = 1
