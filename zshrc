#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

zstyle ':prezto:module:utility' safe-ops no
export PATH="$PATH:/usr/bin/dart-sass/"

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...


# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

# Better vi mode
export KEYTIMEOUT=1

# Use the correct python by default

alias python='python3'
alias pip='pip3'

# follow symbolic links with ls

alias ls='ls -H'

# Various aliases


alias dots='git -C ~/.dotfiles as; git -C ~/.dotfiles ci "update"; git -C ~/.dotfiles push;'

alias va='source venv/bin/activate'
alias rra='cd ~/Desktop/ringingroom; source rrenv/bin/activate; open app/__init__.py'

hnew() {
    cd ~/lelandpaul.com
    hugo new posts/"$1".md
    mkdir content/posts/"$1"
    mv content/posts/"$1".md content/posts/"$1"/index.md
    open content/posts/"$1"/index.md
}
