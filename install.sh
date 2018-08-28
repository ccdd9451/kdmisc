CFD="$( cd "$( dirname "$0" )" && pwd )"

conf2() {
  ln -sf $CFD/misc/$1 $HOME/.$2
}

conf2 ctags ctags
conf2 irbrc irbrc
conf2 tmux tmux.conf
conf2 gitconfig gitconfig

rvm all do gem install bundler
rvm all do bundle install
