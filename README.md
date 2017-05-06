# Luxloop New Computer Setup/Dotfiles

This is the starting config for new general computers (i.e. MacMini's for installations). The idea is to set up a consistent build environment and some smart defaults and user shortcuts to reduce stress later on.

After seting up these dotfiles, the new computer should be ready to go with:
* node
* ruby
* mono
* homebrew (installed in user folder, not globally)
* `zsh` as the default shell, with some nifty plugins
* a ton of git shortcuts and helpers (see `.gitconfig`, `.aliases`, and `.functions`)
* a pretty thorough Sublime Text 3 Setup
* some basic vim plugins
 
This is copied (not forked) from [ivaylopg](https://github.com/ivaylopg/dotfiles)'s dotfiles as a starting point. There is more documentation and attribution there, as well as in the code comments for various components.

## Setup

### Prerequisites
* If you don't have xcode installed, this will prompt you to install the just the command line tools. I suggest just installing xcode first.
* Setup SSH keys for github (instructions [here]()) and gitlab (instructions [here]()), ideally as a new/unique user.


### Instructions
* Clone this repo into your home dir (`~`). **This location is important!**
* `cd ~/dotfiles` and make sure you're running the scripts from there
* Setup is split into several scripts to make troubleshooting easier. Execute each script one-by-one, starting with `00_backup.sh`, by running `./0X_SCRIPTNAME.sh`
    * If this is the first time you're doing this, I suggest taking a look at each script before you run it, so that you know what's going on. Specifically, `02_brewAndNpm.sh` and `05_osxSetup.sh` have some things that have been commented-out that you might want to uncomment or run separately.
* If you set this computer up with it's own git user (instead of hello@luxloop.com), make sure to change the user in `.gitconfig`
