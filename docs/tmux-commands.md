# Tmux

**Prerequisites**

- Tmux installed
- Tmux plugin manager

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

# tmux plugin manager
set -g @plugin 'tmux-plugins/tpm'

# list of tmux plugins
set -g @plugin 'christoomey/vim-tmux-navigator'

# Initialize TMUX plugin manager (keep this line at the very bottom of tmux.conf)
run '~/.tmux/plugins/tpm/tpm'

```

**Start New Session**

```shell
tmux new -s "Name of session"

```

**Exit Session**

```shell
tmux detach
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

**Creating and navigating windows**

```shell
C-a c # creates new tmux window
C-a , # renames tmux window
C-a {number} # navigate to window by number
C-a n # cycles through windows
C-a p # goes to previous
C-a w # views all sessions

```
