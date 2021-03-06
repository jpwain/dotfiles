# configs

Configuration files, notes, scripts, things I spent time configuring and want to remember later.

## Set up bash environment

### Pretty-print directory tree and paginate

First, `brew install tree` then:

```bash
alias ent='tree -AC | less -r'
```

`-AC` is use **A**NSI graphic lines and always **c**olorize.

`-r` is "raw control chars" so the color escape codes from `tree` aren't printed literally.

### Sublime CLI tool

```bash
ln -s "/Users/jpwain/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/sublime
```

### Set editor

```bash
export EDITOR=/usr/local/bin/sublime
```

And in `~/.gitconfig`:

```
[core]
  editor = sublime -n -w
```

### Color grep matches

```bash
export GREP_OPTIONS='--color=auto'
```

### Export manpage to regular text

```bash
man pandoc | col -bx | sublime
```

`-bx` removes backspaces (`b`) and tabs (`x`).

### List files sorted by size

```bash
find . -type f -ls | sort -r -n -k7
```

## Color schemes

**joecool-mono.yml**

```yaml
scheme: "joecool-mono"
author: "Joseph Wain"
base00: "364243"
base01: "364243"
base02: "465659"
base03: "566a6d"
base04: "657c81"
base05: "788f93"
base06: "8ca3a7"
base07: "9cb2b6"
base08: "54676b"
base09: "677e83"
base0A: "566a6d"
base0B: "788f94"
base0C: "445457"
base0D: "677e83"
base0E: "788f94"
base0F: "445457"
```

### Base16 color scheme

For use with [base16-builder](https://github.com/kowalskey/base16-builder) (a fork that works)

## Functions


### Fancy git log, with colors

```bash
alias gitlog="git log --reverse --date=format:'%a %e %b %l:%M%p' --pretty=format:'%C(yellow)%h %Creset%>(12)%ad %Cgreen%<(7)%aN%Cred%d %Creset%s'"
```

### `opengit` to open repo's web page on GitHub

```bash
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
```
