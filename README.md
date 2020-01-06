# Ruby

Loads RVM or configures Ruby local gem installation if RVM isn't installed. This is based on [prezto/modules/ruby](https://github.com/sorin-ionescu/prezto/tree/master/modules/ruby).

## RVM

The recommended way to use Ruby is with [The Ruby Version Manager (RVM)](https://rvm.io), which allows for managing multiple, isolated Ruby installations and gem sets in the home directory.

Since RVM is loaded into the shell and is known to override shell commands, it
may conflict with shell scripts.

Load this module as late as possible when using RVM since RVM will complain if
it is not first in `$PATH`.

## Local Gem Installation

When RVM is not detected, local gems are installed in `$HOME/.gems`; otherwise, they are installed according to the manager.

## Authors

The authors of this module should be contacted via the [issue tracker](https://github.com/rafifos/ruby/issues).

- [Sorin Ionescu](https://github.com/sorin-ionescu)
- [Rafael Julio](https://github.com/rafifos)
