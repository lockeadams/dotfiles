## ███████╗███████╗██╗  ██╗
## ╚══███╔╝██╔════╝██║  ██║
##   ███╔╝ ███████╗███████║
##  ███╔╝  ╚════██║██╔══██║
## ███████╗███████║██║  ██║
## ╚══════╝╚══════╝╚═╝  ╚═╝

######################
## general settings ##
######################

    # configure history file
    HISTFILE=$XDG_DATA_HOME/zsh/zsh_history
    HISTSIZE=1000
    SAVEHIST=1000

    # don't beep
    unsetopt beep

    # use vi keybinds
    bindkey -v

    # prompt management
    autoload -Uz promptinit
    promptinit
    prompt adam1

    # completion
    autoload -Uz compinit
    compinit

    # change cursor shape for different vi modes.
    function zle-keymap-select {
      if [[ ${KEYMAP} == vicmd ]] ||
         [[ $1 = 'block' ]]; then
        echo -ne '\e[2 q'
      elif [[ ${KEYMAP} == main ]] ||
           [[ ${KEYMAP} == viins ]] ||
           [[ ${KEYMAP} = '' ]] ||
           [[ $1 = 'beam' ]]; then
        echo -ne '\e[6 q'
      fi
    }
    zle -N zle-keymap-select

    # use beam shape cursor on startup.
    echo -ne '\e[6 q'

    # use beam shape cursor for each new prompt.
    preexec() {
       echo -ne '\e[6 q'
    }

#############
## aliases ##
#############

    alias ls='ls --color=auto'
    alias la='ls -la'
