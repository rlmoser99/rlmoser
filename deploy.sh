#!/bin/bash
set -e

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
export RAILS_ENV=production

# export RUBY_VERSION=$(cat .ruby-version)

echo ""
echo "Bundle install..."
bundle install --deployment --without development,test

# echo ""
# echo "Running migrations..."
# bundle exec rake db:migrate

echo ""
echo "Flushing cache..."
bundle exec rake tmp:cache:clear

echo ""
echo "Cleaning and recompiling assets..."
bundle exec rake assets:clean
bundle exec rake assets:precompile

echo ""
echo "Restarting site..."
bundle exec rake restart
