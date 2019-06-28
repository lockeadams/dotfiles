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

    # prompt management
    autoload -Uz promptinit
    promptinit
    prompt adam1

    # completion
    autoload -Uz compinit
    compinit

    # use vi keybinds
    bindkey -v

    # remove mode switching delay
    KEYTIMEOUT=5

    # change cursor shape for different vi modes
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

    # use beam before each command
    beam_cursor() {
       echo -ne '\e[6 q'
    }
    precmd_functions+=(beam_cursor)

#############
## aliases ##
#############

    alias ls='ls --color=auto'
    alias la='ls -la'
