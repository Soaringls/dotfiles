#!/bin/bash
# By yongcong.wang @ 27/11/2019

# opts
set -e  # err exit
# set -x  # cmd trace
# vars
HOME="$(cd ~; pwd)"
BASH_CONF_DIR="${HOME}/.bash"
VIM_CONF_DIR="${HOME}/.vim"
ZSH_CONF_DIR="${HOME}/.zsh"
TMUX_CONF_DIR="${HOME}/.tmux"
COMMAND=$1

# functions 
function setup_environment() {
  (type curl &> /dev/null)
  if [[ $? = 1 ]]; then
    sudo apt install curl
  fi
}

function setup_bash() {
  # setup config
  if [[ -d ${BASH_CONF_DIR} ]]; then
    rm -rf ${BASH_CONF_DIR}
  fi
  if [[ -f ${HOME}/.bashrc || -L ${HOME}/.bashrc ]]; then
    rm -f ${HOME}/.bashrc
  fi

  # download config
  git clone -b bash git@github.com/yongcongwang/dotfiles.git \
      ${BASH_CONF_DIR}
  ln -s ${BASH_CONF_DIR}/bashrc ${HOME}/.bashrc
}

function setup_bash() {
  # setup config
  if [[ -d ${VIM_CONF_DIR} ]]; then
    rm -rf ${VIM_CONF_DIR}
  fi
  if [[ -f ${HOME}/.vimrc || -L ${HOME}/.vimrc ]]; then
    rm -f ${HOME}/.vimrc
  fi

  # download config
  git clone -b vim git@github.com/yongcongwang/dotfiles.git \
      ${VIM_CONF_DIR}
  ln -s ${VIM_CONF_DIR}/vimrc ${HOME}/.vimrc
}

function setup_tmux() {
  echo "Setup tmux start"
}
function setup_vim() {
  echo "Setup vim start"
}
function setup_zsh() {
  echo "Setup zsh start"
}

function main() {
  setup_environment

  case ${COMMAND} in
    bash)
      setup_bash
      ;;
    tmux)
      setup_tmux
      ;;
    vim)
      setup_vim
      ;;
    zsh)
      setup_zsh
      ;;
    all)
      setup_bash
      setup_tmux
      setup_vim
      setup_zsh
      ;;
    *)
      echo "ERROR: Unknown paramemter: ${COMMAND}"
      exit 0
      ;;
  esac

  echo "Successfully setup ${COMMAND}, enjoy!"
}

# start
main

# function setup_vim() {
#   # install
#   sudo apt install vim
# 
#   # setup config
#   if [[ -d ${VIM_CONF_DIR} ]]; then
#     rm -rf ${VIM_CONF_DIR}
#   fi
#   if [[ -f ${HOME}/.vimrc || -L ${HOME}/.vimrc ]]; then
#     rm -f ${HOME}/.vimrc
#   fi
# 
#   # download config
#   git clone -b vim https://github.com/yongcongwang/software-config.git ~/.vim
#   ln -s ${VIM_CONF_DIR}/vimrc ${HOME}/.vimrc
# 
#   # install plug manager
#   curl -fLo ${VIM_CONF_DIR}/autoload/plug.vim --create-dirs \
#     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
# 
#   PLUG_DIR=${VIM_CONF_DIR}/plugged
#   if [[ -d ${PLUG_DIR} ]]; then
#     rm -rf ${PLUG_DIR}
#   fi
#   mkdir ${PLUG_DIR}
# 
#   # install plugins
#   git clone https://github.com/altercation/vim-colors-solarized.git \
#     ${PLUG_DIR}/vim-colors-solorized
# 
#   git clone https://github.com/plasticboy/vim-markdown.git \
#     ${PLUG_DIR}/vim-markdown
# 
#   git clone https://github.com/octol/vim-cpp-enhanced-highlight.git \
#     ${PLUG_DIR}/vim-cpp-enhanced-highlight
#   
#   git clone -b develop https://github.com/python-mode/python-mode.git \
#     ${PLUG_DIR}/python-mode
#   
# }
# 
# function setup_zsh() {
#   # install zsh
#   sudo apt install zsh
# 
#   # setup config
#   if [[ -d ${ZSH_CONF_DIR} ]]; then
#     rm -rf ${ZSH_CONF_DIR}
#   fi
#   if [[ -f ${HOME}/.zshrc || -L ${HOME}/.zshrc ]]; then
#     rm -f ${HOME}/.zshrc
#   fi
# 
#   # download config
#   git clone -b zsh https://github.com/yongcongwang/software-config.git \
#     ${ZSH_CONF_DIR}
#   ln -s ${ZSH_CONF_DIR}/zshrc ${HOME}/.zshrc
# }
# 
# function setup_tmux() {
#   # install tmux
#   sudo apt install tmux
# 
#   # setup config
#   if [[ -d ${TMUX_CONF_DIR} ]]; then
#     rm -rf ${TMUX_CONF_DIR}
#   fi
#   if [[ -f ${HOME}/.tmux.conf || -L ${HOME}/.tmux.conf ]]; then
#     rm -f ${HOME}/.tmux.conf
#   fi
# 
#   # download config
#   git clone -b tmux git@github.com:yongcongwang/software-config.git \
#     ${TMUX_CONF_DIR}
#   ln -s ${TMUX_CONF_DIR}/tmux.conf ${HOME}/.tmux.conf
#   git clone https://github.com/tmux-plugins/tpm ${TMUX_CONF_DIR}/plugins/tpm
# }
