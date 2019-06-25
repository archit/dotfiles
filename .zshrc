# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git mac ruby macports)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=$HOME/Projects/buck/bin:$HOME/.cabal/bin:$HOME/.cargo/bin:$HOME/.rvm/bin:/opt/local/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh # This loads NVM
[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator

export EDITOR='vi'
if [[ "$unamestr" == 'Linux' ]]; then
   export JAVA_HOME=/usr/lib/jvm/java-8-oracle
elif [[ "$unamestr" == 'FreeBSD' ]]; then
   export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_151.jdk/Contents/Home
fi
export GOROOT=/usr/local/go
export GOPATH=~/go
export PATH="/usr/local/opt/node@6/bin:$JAVA_HOME/bin:$GOPATH/bin:$PATH":~/bin
alias pbcopy='xsel --clipboard --input'
alias pbpaste='xsel --clipboard --output'
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
autoload -U add-zsh-hook
load-nvmrc() {
    local node_version="$(nvm version)"
    local nvmrc_path="$(nvm_find_nvmrc)"

    if [ -n "$nvmrc_path" ]; then
        local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

        if [ "$nvmrc_node_version" = "N/A" ]; then
            nvm install
        elif [ "$nvmrc_node_version" != "$node_version" ]; then
            nvm use
        fi
    elif [ "$node_version" != "$(nvm version default)" ]; then
        echo "Reverting to nvm default version"
        nvm use default
    fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc

load-virtualenv() {
    if [ -d "venv" ]; then
        source venv/bin/activate
    fi
}
add-zsh-hook chpwd load-virtualenv
alias psc='ps xawf -eo pid,user,cgroup,args'
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
