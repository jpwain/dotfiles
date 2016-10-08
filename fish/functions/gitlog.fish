function gitlog
  git log --reverse --date=format:'%a %e %b %l:%M%p' --pretty=format:'%C(yellow)%h %Creset%>(12)%ad %Cgreen%<(7)%aN%Cred%d %Creset%s'
end