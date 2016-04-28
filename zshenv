echo "reading zshenv..."
# use vim as the visual editor
export VISUAL=atom
export EDITOR=$VISUAL

# ensure dotfiles bin directory is loaded first
export PATH="$HOME/.bin:/usr/local/sbin:$PATH"

# turing rbenv off for the moment for rvm

# load rbenv if available
if which rbenv; then
  echo 'loading rbenv shim on to path'
  eval "$(rbenv init - --no-rehash)"
fi

# mkdir .git/safe in the root of repositories you trust
export PATH=".git/safe/../../bin:$PATH"

# set location of dotfile managemnt tool rcrc so that you can run rcup
export RCRC=$HOME/dotfiles/rcrc

# Local config
[[ -f ~/.zshenv.local ]] && source ~/.zshenv.local
