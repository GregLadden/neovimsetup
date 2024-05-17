# Tmux

Create a .tmux.conf file and add

```tmux
set -g default-terminal "screen-256color"

# setting new prefix to control a
set -g prefix C-a
unbind C-b
bind-key C-a send-prefix

# splitting window horizontally use |
unbind %
bind | split-window -h

# splitting window vertically use -
unbind '"'
bind - split-window -v

# reload tmux config file
unbind r
bind r source-file ~/.tmux.conf

# Resize panes
bind j resize-pane -D 5
bind k resize-pane -U 5
bind l resize-pane -R 5
bind h resize-pane -L 5

# Toggle maximize a pane
bind -r m resize-pane -Z

set -g mouse on

```

**Start New Session**

```shell
tmux new -s "Name of session"

```

**Exit Session**

```shell
tmuch detach
```

**Go back into a session**

```shell
tmux attach -t "Name of session"
```

**List Sessions**

```shell
tmux ls
```

**View current sessions**

```shell
C-a
s
```
