echo "reading zshenv..."
# use vim as the visual editor
export VISUAL=atom
export EDITOR=$VISUAL

# ensure dotfiles bin directory is loaded first
export PATH="$HOME/.bin:/usr/local/sbin:$PATH"

# mkdir .git/safe in the root of repositories you trust
export PATH=".git/safe/../../bin:$PATH"

# set location of dotfile managemnt tool rcrc so that you can run rcup
export RCRC=$HOME/dotfiles/rcrc

# set the path for pyenv
export PYENV_ROOT="$HOME/.pyenv"

# Local config
[[ -f ~/.zshenv.local ]] && source ~/.zshenv.local
