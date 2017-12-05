# tmux

## install
```
brew install tmux
```

## Very basic command
* tmux -V: show version
* tmux new -s <seesion-name>: create a new session
* tmux ls: list sessions
* tmux a -t <session-name>: attach to a session

## Prefix
`ctrl + b`, I have customised by `ctrl + t`

## Window management
```
<prefix> c: create a new window (appears in status bar)
<prefix> 0: switch to window 0
<prefix> 1: switch to window 1
<prefix> 2: switch to window 2 (etc.)
<prefix> n: switch to next window
<prefix> x: kill current window
<prefix> ,: rename window
<prefix> [: use normal navigation keys to scroll,`q` to quit scroll mode
```

## Session management
```
<prefix> s: switch session
<prefix> d: detach tmux (exit back to normal terminal)
```

## Panes
```
<prefix> ": Split the window into 2 vertical panes
<prefix> %: Split the window into 2 horizontal panes
<prefix> { or }: Swap the panes
<prefix> q, then <pane-index>: Select pane (I have customised to be: <prefix> ^n)
```

## Copy & paste
Use it like you are in vim.
```
bind-key -Tcopy-mode-vi 'v' send -X begin-selection
bind-key -Tcopy-mode-vi 'y' send -X copy-pipe-and-cancel pbcopy
```

## Helpful commands
* tmux list-keys: list out every bound key and the tmux command it runs
* tmux list-commands: list out every tmux command and its arguments
* tmux info: list out every session, windwo, pane, its pid, etc
* tmux source-file ~/.tmux.conf: reload the tmux cofig (I have customised to be: <prefix> r)

## Other resources
[1] https://tmuxp.git-pull.com/en/latest/about_tmux.html
[2] https://robots.thoughtbot.com/a-tmux-crash-course
