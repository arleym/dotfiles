# Path to your oh-my-zsh installation.
export ZSH=/Users/arleym/.oh-my-zsh

export PATH="/usr/local/opt/node@8/bin:$PATH"

# Source the proper profile file.
source ~/.profile

# Theme - using Pure
ZSH_THEME=""

# hyphen-insensitive completion. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

plugins=(
  git
  osx
  zsh-syntax-highlighting
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

. ~/Dropbox/appdata/zsh/z.sh

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

. ~/dev/sandbox/dotfiles/.aliases

# Git Autocomplete
if [ -f ~/.git-completion.zsh ]; then
  . ~/.git-completion.zsh
fi

autoload -U promptinit; promptinit
prompt pure

cat ~/Dropbox/appdata/zsh/run.txt
Grey='\033[1;30m'
NC='\033[0m' # No Color
printf "› ${Grey}"
# curl -L http://www.ourmanna.com/verses/api/get\?format\=text\&order\=random
printf "${NC}\n"

# tabtab source for box package
# uninstall by removing these lines or running `tabtab uninstall box`
[[ -f /usr/local/lib/node_modules/box-cli/node_modules/tabtab/.completions/box.zsh ]] && . /usr/local/lib/node_modules/box-cli/node_modules/tabtab/.completions/box.zsh
