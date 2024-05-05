#/usr/bin/env* zsh
set -eu

DOTFILES_DIR=~/dotfiles
ZSH_DIR=${DOTFILES_DIR}/zsh
NVIM_DIR=${DOTFILES_DIR}/nvim
TMUX_DIR=${DOTFILES_DIR}/tmux

TMUX_PLUGINS_DIR=${TMUX_DIR}/plugins/tpm


#-------------------------------------------------------------------------------#
# ダウンロード
#-------------------------------------------------------------------------------#
# tmuxのプラグイン管理にtpmを使う
# installされたプラグインはホームの .tmux ディレクトリに追加される
# .tmux ディレクトリは自動で作成される
if [ ! -d ${TMUX_PLUGINS_DIR} ]; then
  git clone https://github.com/tmux-plugins/tpm ${TMUX_PLUGINS_DIR}
else
  echo 'tmux plugin was installed.'
fi


if [ ! -d ${NVIM_DIR} ]; then
  git clone git@github.com:kKanagaki/kickstart.nvim.git "$NVIM_DIR"
else
  echo 'kickstart nvim was installed.'
fi


#-------------------------------------------------------------------------------#
# シンボリックリンク
#-------------------------------------------------------------------------------#
if [ ! -L ~/.zshrc ]; then
  echo 'create zsh config link:'
  ln -s ${ZSH_DIR}/.zshrc ~/.zshrc
fi


if [ ! -d ~/.config/nvim ]; then
  echo 'create nvim config dir:'
  mkdir -p ~/.config/nvim
fi

if [ ! -L ~/.config/nvim/init.vim ]; then
  echo 'create nvim config link:'
  ln -s ${NVIM_DIR}/init.lua ~/.config/nvim/init.lua
fi


if [ ! -L ~/.tmux.conf ]; then
  echo 'create tmux config link:'
  ln -s ${TMUX_DIR}/.tmux.conf ~/.tmux.conf
fi

