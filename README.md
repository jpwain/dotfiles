# configs
Configuration files, notes, scripts, things I spent time configuring and want to remember later.

### Pretty-print directory tree and paginate

First, `brew install tree` then:

```bash
alias ent='tree -AC | less -r
'```

`-AC` is use **A**NSI graphic lines and always **c**olorize.

`-r` is "raw control chars" so the color escape codes from `tree` aren't printed literally.

### Sublime command-line tool

```bash
ln -s "~/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl" ~/bin/sublime
```

### Set $EDITOR

```bash
export EDITOR=/usr/local/bin/sublime
```

Probably I don't need to do this.