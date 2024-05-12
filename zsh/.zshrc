
# historyの最大数

#HISTTIMEFORMAT='%Y/%m/%d %H:%M:%S '
# history
HISTFILE=$HOME/.zsh-history # 履歴を保存するファイル
HISTSIZE=1000000
SAVEHIST=1000000            # 上述のファイルに保存する履歴のサイズ

# share .zshhistory
setopt inc_append_history   # 実行時に履歴をファイルにに追加していく
setopt share_history        # 履歴を他のシェルとリアルタイム共有する

DOTFILES_DIR=$HOME/dotfiles
ZSH_DIR=${DOTFILES_DIR}/zsh

export ATCODER_DIR=$HOME/atcoder
source ${ZSH_DIR}/alias.sh

# export PATH=$PATH:/Users/kkanagaki/.nodebrew/current/bin

###
# setting of vim
###
#export EDITOR=/Applications/MacVim.app/Contents/MacOS/Vim
export EDITOR=nvim
bindkey -e # for emacs

export "PATH=/usr/local/bin:$PATH"
export PATH="/usr/local/opt/php@8.1/bin:$PATH"
export PATH="/usr/local/opt/php@8.1/sbin:$PATH"
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export PATH="$HOME/Library/Android/sdk/platform-tools:$PATH"

export PATH="$HOME/.nodenv/bin:$PATH"
eval "$(nodenv init -)"

export PATH=$PATH:/Applications/"Android Studio.app"/Contents/jbr/Contents/Home/bin
export JAVA_HOME=/Applications/"Android Studio.app"/Contents/jbr/Contents/Home
######################################################
# tmux powerline
######################################################
export TMUX_POWERLINE_THEME=my-theme

######################################################
# fzf
######################################################
source ${ZSH_DIR}/fzf.sh


