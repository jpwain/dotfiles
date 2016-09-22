# pretty-print & paginate
alias ent='tree -AC | less -r'

# don't forget to link the subl tool, e.g.:
# ln -s "~/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl" ~/bin/sublime

# couldnt figure out how to exit vim so
export EDITOR=/usr/local/bin/sublime

# MG's fancy color settings
# export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
# export CLICOLOR=1
# export LSCOLORS=ExFxBxDxCxegedabagacad

# color grep matches
export GREP_OPTIONS='--color=auto'

# set up an alias for Chrome
alias chrome="/Applications/Google\\ \\Chrome.app/Contents/MacOS/Google\\ \\Chrome"

# prettier git log
alias gitlog="git log --reverse --date=format:'%a %e %b %l:%M%p' --pretty=format:'%C(yellow)%h %Creset%>(12)%ad %Cgreen%<(7)%aN%Cred%d %Creset%s'"