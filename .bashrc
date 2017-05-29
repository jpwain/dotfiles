# pretty-print & paginate
alias ent='tree -AC | less -r'

# don't forget to link the subl tool, e.g.:
# ln -s "~/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl" ~/bin/sublime

# couldnt figure out how to exit vim so
export EDITOR=/usr/local/bin/sublime

# ls in columns, with color
alias ls="ls -laCG"

# colored less

alias ll='CLICOLOR_FORCE=1 ls -laG | less -R'

# color grep matches
export GREP_OPTIONS='--color=auto'

# set up an alias for Chrome
alias chrome="/Applications/Google\\ \\Chrome.app/Contents/MacOS/Google\\ \\Chrome"

# prettier git log
alias gitlog="git log --reverse --date=format:'%a %e %b %l:%M%p' --pretty=format:'%C(yellow)%h %Creset%>(12)%ad %Cgreen%<(7)%aN%Cred%d %Creset%s'"

# defaults for fzf
export FZF_DEFAULT_OPTS="--multi --exit-0 --bind *:toggle-all,ctrl-p:toggle-preview --preview='head -$LINES {}' --preview-window=hidden --reverse --height 50% --border"

# pick files to edit
alias fze="find . -maxdepth 1 | fzf | xargs sublime"


# Function `opengit` to open in web browser a github remote

function opengit {
    if [ -d .git ]; then
        remotes=$(git remote -v | awk -F'git@github.com:' '{print $2}' | cut -d" " -f1)
        if [ -z "$remotes" ];
        then
            remotes=$(git remote -v | awk -F'https://github.com/' '{print $2}' | cut -d" " -f1)
        fi

        remote_url=$(echo $remotes | cut -d" " -f1)
        url="https://github.com/"
        url="${url}${remote_url}"
        open $url
    else
      echo "No .git file found; not currently in a git repo?"
    fi;
}

# Stuff borrowed from MDO's config: https://github.com/mdo/config/blob/master/.bash_profile#L1-L13

# Get the Git branch
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Custom bash prompt
#
# Includes custom character for the prompt, path, and Git branch name.
#
# Source: kirsle.net/wizards/ps1.html
export PS1="\n\[$(tput bold)\]\[$(tput setaf 5)\]➜ \[$(tput setaf 6)\]\w\[$(tput setaf 3)\]\$(parse_git_branch) \[$(tput sgr0)\]"

