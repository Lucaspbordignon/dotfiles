# Lines configured by zsh-newuser-install
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/lucasbordignon/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

###############################################################################
# History
HISTFILE=~/.zsh_hist
HISTSIZE=1000
SAVEHIST=1000

# Fish-like auto complete
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

PS1='%F{green}%~%f >> '

alias faustop="top"
alias cd=cdls
alias ls='ls --color=auto'
alias emacs="emacs -nw"
alias nvidia-docker=gpudocker

# Function to execute a 'cd' and, after that, a 'ls'
function cdls {
    builtin cd "$@" && ls
}

function gpudocker {
    sudo -b nohup nvidia-docker-plugin > /tmp/nvidia-docker.log && nvidia-docker
}

bindkey "^[[1;5C" forward-word # Ctrl ->
bindkey "^[[1;5D" backward-word # Ctrl <-
bindkey \^U backward-kill-line # Ctrl + u
