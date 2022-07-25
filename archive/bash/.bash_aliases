#-------------------------------------------------------------
# My custom stuff
#-------------------------------------------------------------

# Tools
alias uoftsshY="ssh -Y nolancal@teach.cs.utoronto.ca"
alias uoftssh="ssh -Y nolancal@teach.cs.utoronto.ca"
alias swap="setxkbmap -option caps:swapescape"
alias q="exit"
alias monitor="xrandr --output VGA-0 --mode 1280x1024 --rate 75.02"
alias vnceee="x11vnc -display :0 -geometry 1024x600"
alias h="cd ~/"
alias m="cd ~/MEGA"

# Program
alias ydlm="youtube-dl -x --audio-format mp3 "
alias scrrec="ffmpeg -video_size 1280x1024 -framerate 25 -f x11grab -i :0.0 rec.mp4"
alias webcam="mplayer tv:// -tv driver=v4l2:width=640:height=480:device=/dev/video2 -fps 60 -vf screenshot"


 
# Files
alias v="vim"
alias vrc="vim ~/.vimrc"
alias brc="vim ~/.bashrc"
alias trc="vim ~/.tmux.conf"
alias irc="vim ~/.config/i3/config"
alias krc="vim ~/.config/kitty/kitty.conf"
alias bal="vim ~/.bash_aliases"
alias brld="source ~/.bashrc"
alias trld="tmux source-file ~/.tmux.conf"


#  linux Aliases
alias pi="sudo pacman -S"
alias pr="sudo pacman -R"
alias as="apt-cache search"

# Locations
alias bs="cd ~/basic-system"


#-------------------------------------------------------------
# Git Alias Commands
#-------------------------------------------------------------
alias g="git status"
alias ga="git add"
alias gaa="git add ."
#alias gau="git add -u"
alias gc="git commit"
#alias gca="git commit -am"
#alias gb="git branch"
#alias gbd="git branch -d"
#alias gco="git checkout"
#alias gcob="git checkout -b"
#alias gt="git stash"
#alias gta="git stash apply"
#alias gm="git merge"
#alias gr="git rebase"
#alias gl="git log --oneline --decorate --graph"
#alias glog="git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --"
#alias glga="git log --graph --oneline --all --decorate"
#alias gb="git branch"
#alias gs="git show"
alias gd="diff --color --color-words --abbrev"
# alias gdc="git diff --cached"
# alias gbl="git blame"
alias gps="git push"
alias gpl="git pull"
alias gpl="git pull"
# alias gb="git branch"
alias gcl="git clone"
# alias gd="git diff"
# alias go="git checkout "
# alias gk="gitk --all&"
# alias gx="gitx --all"

