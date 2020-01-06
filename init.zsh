#
# Loads RVM or configures Ruby local gem installation if RVM isn't installed.
#
# Authors: Rafael Julio <hello.rjulio@gmail.com>
# Original Authors: Sorin Ionescu <sorin.ionescu@gmail.com>
#
if [[ -s "$HOME/.rvm/scripts/rvm" ]]; then
  # Unset AUTO_NAME_DIRS since auto adding variable-stored paths to ~ list
  # conflicts with RVM.
  unsetopt AUTO_NAME_DIRS

  # Load RVM into the shell session *as a function*.
  source "$HOME/.rvm/scripts/rvm"
else
  # Prepend local gems bin directories to PATH.
  path=($HOME/.gem/ruby/*/bin(N) $path)
fi

# Return if requirements are not found.
if (( ! $+commands[ruby] && ! $+commands[rvm] )); then
  return 1
fi