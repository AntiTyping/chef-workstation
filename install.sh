#curl -L https://get.rvm.io | bash -s stable --autolibs=enabled --ruby=1.9.3
#source ~/.rvm/scripts/rvm

gem install bundler -i ~/.gem/ruby/1.8 --no-rdoc --no-ri

~/.gem/ruby/1.8/bin/bundle --path .bundle

~/.gem/ruby/1.8/bin/bundle exec chef-solo -c solo.rb -j solo.json

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
echo `which rvm`
rvm gemset use global
gem install pry pry-doc pry-debugger pry-remote --no-ri --no-rdoc
brew install pow
rvm gemset use default
