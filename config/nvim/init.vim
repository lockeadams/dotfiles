"" ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
"" ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
"" ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
"" ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
"" ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
"" ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝

"" plugins

    call plug#begin()
        Plug 'Yggdroot/indentLine'
        Plug 'chrisbra/Colorizer'
        Plug 'neoclide/coc.nvim', {'branch': 'release'}
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

"" keymaps

    " set leader to comma
    let mapleader=","

    " yank and paste to clipboard w/ leader
    map <leader>y "+y
    map <leader>p "+p
