#!/bin/sh

source 99_utils.sh

ask_for_confirmation "Install Vundle (Vim Plugin manager)?"
if answer_is_yes; then
  print_info "Installing Vundle..."
  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
  vim +PluginInstall +qall
fi

ask_for_confirmation "Install git-friendly?"
if answer_is_yes; then
  print_info "Installing git-friendly"
  #url -s https://raw.githubusercontent.com/jamiew/git-friendly/master/install.sh | bash
  sudo bash < <( curl https://raw.githubusercontent.com/jamiew/git-friendly/master/install.sh)
fi

ask_for_confirmation "Configure Sublime Text CLI?"
if answer_is_yes; then
  print_info "Setting up Sublime CLI"
  sudo ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl
fi


ask_for_confirmation "Install 'Bundler' Ruby Gem?"
if answer_is_yes; then
  print_info "Installing 'Bundler'"
  sudo gem install bundler
fi
