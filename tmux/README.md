# tmux

## install
```
brew install tmux
```

## Very basic command
* tmux
* tmux ls
* tmux a -t <session-name>

## Prefix
`ctrl + b`, I have customised by `ctrl + t`

## Window management
```
<prefix> c: Create a new window (appears in status bar)
<prefix> 0: Switch to window 0
<prefix> 1: Switch to window 1
<prefix> 2: Switch to window 2 (etc.)
<prefix> x: Kill current window
<prefix> ,: rename window
<prefix> d: Detach tmux (exit back to normal terminal)
<prefix> [: Use normal navigation keys to scroll,`q` to quit scroll mode
```

## Session management
* tmux new -s <seesion-name>
* tmux attach -t <session-name>
* tmux switch -t <session-name>
* tmux list-sessions (or ls)

## Panes
```
<prefix> ": Split the window into 2 vertical panes
<prefix> %: Split the window into 2 horizontal panes
<prefix> { or }: Swap the panes
<prefix> q, then <pane-index>: Select pane (I have customised to be: <prefix> ^n)
```

## Helpful commands
* tmux list-keys: list out every bound key and the tmux command it runs
* tmux list-commands: list out every tmux command and its arguments
* tmux info: list out every session, windwo, pane, its pid, etc
* tmux source-file ~/.tmux.conf: reload the tmux cofig (I have customised to be: <prefix> r)

## Other resources
[1] https://robots.thoughtbot.com/a-tmux-crash-course
