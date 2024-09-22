# Environment variables
export NODE_ENV="development"

# Aliases
alias zsc="code ~/.zshrc"
alias zs="source ~/.zshrc"

## M1 stuff
alias mbrew="arch -x86_64 /usr/local/bin/brew"

# ZSH Variables
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="spaceship"

# ZSH Plugins
plugins=(git)
autoload -U compinit && compinit

source $ZSH/oh-my-zsh.sh

# NVM
export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"

if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zdharma-continuum/zinit-annex-as-monitor \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-rust

### End of Zinit's installer chunk


# Android Studio stuff
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-17.jdk/Contents/Home
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH="$PATH:$HOME/.yarn/bin"

zinit light zdharma/fast-syntax-highlighting
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-completions
export PATH="/usr/local/opt/ruby/bin:/usr/local/lib/ruby/gems/3.1.0/bin:$PATH"
export PATH="/opt/homebrew/opt/ruby/bin:/opt/homebrew/lib/ruby/gems/3.1.0/bin:$PATH"

SPACESHIP_PROMPT_ORDER=(
  char          # Prompt character
  dir           # Current directory section
  git           # Git section (git_branch + git_status)
  hg            # Mercurial section (hg_branch  + hg_status)
)
SPACESHIP_USER_SHOW=never
SPACESHIP_DIR_PREFIX=""
SPACESHIP_DIR_COLOR="blue"
SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_PROMPT_SEPARATE_LINE="false"
SPACESHIP_GIT_SHOW=true
SPACESHIP_GIT_SUFFIX=""
SPACESHIP_GIT_PREFIX=""
SPACESHIP_GIT_SYMBOL=""
SPACESHIP_GIT_BRANCH_PREFIX="("
SPACESHIP_GIT_BRANCH_SUFFIX=") "
SPACESHIP_GIT_BRANCH_COLOR="cyan"
SPACESHIP_GIT_STATUS_PREFIX=""
SPACESHIP_GIT_STATUS_SUFFIX=" "
SPACESHIP_GIT_STATUS_COLOR="yellow"
SPACESHIP_DIR_TRUNC="1"
# SPACESHIP_CHAR_SYMBOL="❯"
# SPACESHIP_CHAR_SYMBOL_ROOT="❯"


# flutter stuff
export OLDPATH=$HOME/development/3.13.9/flutter/bin:$PATH
export PATH=$HOME/development/3.19.6/flutter/bin:$PATH
export PATH="$PATH":"$HOME/.pub-cache/bin"
## [Completion]
## Completion scripts setup. Remove the following line to uninstall
[[ -f /Users/amaurilima/.dart-cli-completion/zsh-config.zsh ]] && . /Users/amaurilima/.dart-cli-completion/zsh-config.zsh || true
## [/Completion]

export LD_LIBRARY_PATH=/usr/local/Cellar/instantclient-sqlplus/19.8.0.0.0dbru/lib:/usr/local/Cellar/instantclient-basic/19.8.0.0.0dbru/lib:$LD_LIBRARY_PATH
export PATH=/usr/local/Cellar/instantclient-sqlplus/19.8.0.0.0dbru/bin:$PATH