# Tmux

**Prerequisites**

- Tmux installed
- Tmux plugin manager

Create a .tmux.conf file and add

```tmux
# uncomment for wsl2 set -g default-terminal "screen-256color"
# uncomment for wsl2 set -g default-terminal "xterm-256color"

set -g pane-border-status top

set-option -ga terminal-overrides ",xterm-256color:Tc"

set -g prefix C-s
unbind C-b
bind-key C-s send-prefix

# splitting window horizontally use |
# splitting window vertically use -
# reload tmux config file
unbind %
bind | split-window -h

unbind '"'
bind - split-window -v

unbind r
bind r source-file ~/.tmux.conf

# Resize panes
bind j resize-pane -D 5
bind k resize-pane -U 5
bind l resize-pane -R 5
bind h resize-pane -L 5

set-option -g status-position top

# Toggle maximize a pane
bind -r m resize-pane -Z

set -g mouse on

set-window-option -g mode-keys vi

bind-key -T copy-mode-vi 'v' send -X begin-selection # start selecting text with "v"
bind-key -T copy-mode-vi 'y' send -X copy-selection # copy text with "y"

unbind -T copy-mode-vi MouseDragEnd1Pane # don't exit copy mode when dragging with mouse

set -g @plugin 'tmux-plugins/tpm'

# list of tmux plugins
set -g @plugin 'christoomey/vim-tmux-navigator'
set -g @plugin 'catppuccin/tmux'

set -g @catppuccin_status_background "#232A2E"
set -g @catppuccin_window_left_separator ""
set -g @catppuccin_window_right_separator " "
set -g @catppuccin_window_middle_separator " █"
set -g @catppuccin_window_number_position "right"

set -g @catppuccin_window_default_fill "number"
set -g @catppuccin_window_default_text "#W"

set -g @catppuccin_window_current_fill "number"
set -g @catppuccin_window_current_text "#W"

set -g @catppuccin_status_modules_right "directory  session"
set -g @catppuccin_status_left_separator  " "
set -g @catppuccin_status_right_separator ""
set -g @catppuccin_status_fill "icon"
set -g @catppuccin_status_connect_separator "no"

set -g @catppuccin_directory_text "#{pane_current_path}"
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
C-s
s
```

**Creating and navigating windows**

```shell
C-s c # creates new tmux window
C-s , # renames tmux window
C-s {number} # navigate to window by number
C-s n # cycles through windows
C-s p # goes to previous
C-s w # views all sessions

```
