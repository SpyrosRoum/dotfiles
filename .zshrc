# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/.cargo/bin:$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/spyros/.config/oh-my-zsh"
export PATH=~/go/bin:$PATH
export PATH=~/.local/bin:$PATH
export PATH=~/.poetry/bin:$PATH
export PATH=~/.cargo/bin:$PATH

export HISTFILE=~/.config/zhistory

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="bira"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=5

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git poetry zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# Compilation flags
export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
alias q="exit"

alias ovh="ssh 51.75.73.134 -p 88 -l spyros" 
alias mule="ssh root@192.168.2.43"
alias uniwa="ssh 83.212.76.143 -l ice19390205"
alias sl="sl -Fca; clear; pwd; ls"

alias ls="exa --color=always --group-directories-first"
alias cat="bat -p"
alias grep="rg"
alias ps="procs"
alias find="fd"

alias mv="mv -i"
alias rm="rm -i"
alias cal="cal -m"

alias clock="tty-clock -scD"
alias paru="paru --bottomup" # So it shows official repos first

alias tracert="traceroute"

alias config='/usr/bin/git --git-dir=$HOME/.dots/ --work-tree=$HOME'

# Disable terminal hang when pressing ctrl+s
stty -ixon

eval `ssh-agent` > /dev/null

# Disable dotnet telemetry
DOTNET_CLI_TELEMETRY_OPTOUT=1


### ARCHIVE EXTRACTION 
# usage: ex <file> 
ex () {   
    if [ -f $1 ] ; then     
        case $1 in       
            *.tar.bz2)   tar xjf $1   ;;       
            *.tar.gz)    tar xzf $1   ;;       
            *.bz2)       bunzip2 $1   ;;       
            *.rar)       unrar x $1   ;;       
            *.gz)        gunzip $1    ;;       
            *.tar)       tar xf $1    ;;       
            *.tbz2)      tar xjf $1   ;;       
            *.tgz)       tar xzf $1   ;;       
            *.zip)       unzip $1     ;;       
            *.Z)         uncompress $1;;       
            *.7z)        7z x $1      ;;       
            *.deb)       ar x $1      ;;       
            *.tar.xz)    tar xf $1    ;;       
            *.tar.zst)   unzstd $1    ;;            
            *)           echo "'$1' cannot be extracted via ex()" ;;     
        esac   
    else     
        echo "'$1' is not a valid file"   
    fi 
}

eval "$(zoxide init zsh)"
