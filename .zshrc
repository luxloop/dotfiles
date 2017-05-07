ZSHA_BASE=$HOME/.zsh-antigen
ADOTDIR=$ZSHA_BASE
source $ZSHA_BASE/antigen/antigen.zsh

#antigen-use oh-my-zsh

#zshConfig/git.zsh
#zshConfig/theme-and-appearance.zsh

antigen bundle lukechilds/zsh-nvm
antigen bundle luxloop/dotfiles zshConfig/all/

if [ "$OSTYPE"="darwin11.0" ]; then
  antigen bundle luxloop/dotfiles zshConfig/osx/
fi
antigen theme luxloop/dotfiles zshThemes/luxloop

antigen apply

##########

# Automatically list directory contents on `cd`.
auto-ls () {
	emulate -L zsh;
	# explicit sexy ls'ing as aliases arent honored in here.
	CLICOLOR_FORCE=1 ls -FGh
}
chpwd_functions=( auto-ls $chpwd_functions )

zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

# Load default dotfiles
source ~/.bash_profile

# do some rbenv stuff
source "$(brew --prefix)/Cellar/rbenv/1.1.0/completions/rbenv.zsh";
command rbenv rehash 2>/dev/null
