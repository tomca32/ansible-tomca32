set PATH /opt/homebrew/sbin /opt/homebrew/bin /usr/local/bin /usr/bin /bin /usr/sbin /sbin /Users/tomislavpesut/bin
set PATH $PATH /Applications/Visual Studio Code.app/Contents/Resources/app/bin # Add VS Code to Path
set PATH $PATH $HOME/.cargo/bin # Rust Package Manager - Cargo
set PATH $PATH $HOME/.rvm/bin # Add RVM to PATH for scripting
set PATH $PATH $HOME/.local/bin
set PATH $PATH /opt/homebrew/Cellar/x86_64-unknown-linux-gnu/11.2.0/bin
set TERM xterm-256color

alias l="ls -al"
alias g="git"
alias gd="g diff"
alias gds="g diff --staged"
alias gl="g lg"
alias dk="docker"
alias dkc="docker-compose"
alias ip="ipconfig getifaddr en1"
alias intel="arch -x86_64"

export ANDROID_HVPROTO=ddm # Android debugging

echo "rvm default"1>/dev/null 2>&1 # Activate RVM

starship init fish | source

source "$(brew --prefix asdf)"/libexec/asdf.fish

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
