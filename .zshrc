export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
export PATH="/opt/homebrew/opt/python@3.8/bin:$PATH"

#alias for x86 commands
alias ibrew='arch -x86_64 /usr/local/bin/brew'
alias ipython3='usr/local/opt/python@3.8/bin/python3'

#alias to grep history of the past 1000 commands
alias historyg='history 1000 | grep'

#colorize ls
export TERM="xterm-256color" CLICOLOR=1

#colorize man
export LESS_TERMCAP_mb=$(print -P "%F{cyan}") \
    LESS_TERMCAP_md=$(print -P "%B%F{red}") \
    LESS_TERMCAP_me=$(print -P "%f%b") \
    LESS_TERMCAP_so=$(print -P "%K{magenta}") \
    LESS_TERMCAP_se=$(print -P "%K{black}") \
    LESS_TERMCAP_us=$(print -P "%U%F{green}") \
    LESS_TERMCAP_ue=$(print -P "%f%u")

#prompt setup
label=$(arch)
PROMPT="$label@%~:"