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
  # clear
  if [[ -d ${BASH_CONF_DIR} ]]; then
    rm -rf ${BASH_CONF_DIR}
  fi
  if [[ -f ${HOME}/.bashrc || -L ${HOME}/.bashrc ]]; then
    rm -f ${HOME}/.bashrc
  fi

  # download config
  git clone -b bash git@github.com:yongcongwang/dotfiles.git \
      ${BASH_CONF_DIR}
  ln -s ${BASH_CONF_DIR}/bashrc ${HOME}/.bashrc
}

function setup_vim() {
  # clear
  if [[ -d ${VIM_CONF_DIR} ]]; then
    rm -rf ${VIM_CONF_DIR}
  fi
  if [[ -f ${HOME}/.vimrc || -L ${HOME}/.vimrc ]]; then
    rm -f ${HOME}/.vimrc
  fi

  # download config
  git clone -b vim git@github.com:yongcongwang/dotfiles.git \
      ${VIM_CONF_DIR}
  ln -s ${VIM_CONF_DIR}/vimrc ${HOME}/.vimrc
}

function setup_tmux() {
  echo "Setup tmux start"
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
    all)
      setup_bash
      setup_tmux
      setup_vim
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
