source /usr/facebook/ops/rc/master.zshrc
# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="Soliah"

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
plugins=(git macos ruby macports nvm pyenv)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export EDITOR='vim'

if [[ "$unamestr" == 'Linux' ]]; then
    alias pbcopy='xsel --clipboard --input'
    alias pbpaste='xsel --clipboard --output'
fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator

export GOPATH=~/go
export PATH="$PATH:$GOPATH/bin"

if [[ "$unamestr" == 'Linux' ]]; then
   export JAVA_HOME=/usr/lib/jvm/java-8-oracle
elif [[ "$unamestr" == 'FreeBSD' ]]; then
   export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_151.jdk/Contents/Home
fi

export PATH="~/bin:$JAVA_HOME/bin:$GOPATH/bin:$PATH"

if [[ "$unamestr" == 'Linux' ]]; then
  alias psc='ps xawf -eo pid,user,cgroup,args'
fi

# Tell FZF in Vim to use ripgrep instead
export FZF_DEFAULT_COMMAND='rg --files --no-ignore-vcs --hidden'

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
