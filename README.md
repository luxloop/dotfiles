# Luxloop New Computer Setup/Dotfiles

This is the starting config for new general computers (i.e. MacMini's for installations). The idea is to set up a consistent build environment and some smart defaults and user shortcuts to reduce stress later on.

After seting up these dotfiles, the new computer should be ready to go with:
* node (with nvm)
* ruby
* java
* mono (for working on Unity C# projects)
* ffmpeg
* imagemagick
* gulp-cli
* homebrew (installed in user folder, not globally)
* `zsh` as the default shell, with a theme amd some nifty plugins
* a ton of git shortcuts and helpers (see `.gitconfig`, `.aliases`, and `.functions`)
* Google Chrome
* Screen Blacker
* VLC
* Sublime Text 3 with a bunch of useful plugins
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
    * Some scripts will ask for your user password, so keep an eye on the terminal.
    * Some scripts will ask you to confirm whether or not you want certain things. Unless you have a specific reason to not install something, you should say `yes`.
    * You may be prompted to close and reopen *Terminal* for some changes to take effect.
    * If this is the first time you're doing this, I suggest taking a look at each script before you run it, so that you know what's going on. Specifically, `02_brewAndNpm.sh` and `05_osxSetup.sh` have some things that have been commented-out that you might want to uncomment or run separately.
* If you set this computer up with it's own git user (instead of hello@luxloop.com), make sure to change the user in `.gitconfig`
* Update the terminal preferences to use the profile in `~/dotfiles/misc/luxloop.terminal`
