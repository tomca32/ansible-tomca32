set PATH /opt/homebrew/bin /usr/local/bin /usr/bin /bin /usr/sbin /sbin /Users/tomislavpesut/bin
set PATH $PATH /Applications/Visual Studio Code.app/Contents/Resources/app/bin # Add VS Code to Path
set PATH $PATH $HOME/.cargo/bin:$PATH # Rust Package Manager - Cargo
set PATH $PATH $HOME/.rvm/bin # Add RVM to PATH for scripting
set PATH $PATH /Library/Frameworks/Mono.framework/Home/bin

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

echo "rvm default" # Activate RVM

starship init fish | source
