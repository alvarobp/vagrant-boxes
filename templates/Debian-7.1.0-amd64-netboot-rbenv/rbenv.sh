# Install rbenv system wide
#
# Dependencies:
#   * build-essential 
#   * git
# 
# Brought from https://github.com/benlinton/veewee-files/blob/master/templates/Debian-6.0.7-amd64-netboot/ruby-rbenv-system-wide.sh

# Set default global ruby version if it's set
[ -z "$GLOBAL_RUBY_VERSION" ] && 
  export GLOBAL_RUBY_VERSION=2.0.0-p247

# Install rbenv
git clone git://github.com/sstephenson/rbenv.git /usr/local/rbenv

# Install ruby-build
git clone git://github.com/sstephenson/ruby-build.git /usr/local/rbenv/plugins/ruby-build

# Initialize rbenv on startup
echo '#!/usr/bin/env bash'                   > /etc/profile.d/rbenv.sh
echo 'export RBENV_ROOT=/usr/local/rbenv'   >> /etc/profile.d/rbenv.sh
echo 'export PATH="$RBENV_ROOT/bin:$PATH"'  >> /etc/profile.d/rbenv.sh
echo 'eval "$(rbenv init -)"'               >> /etc/profile.d/rbenv.sh

# Make rbenv initializer script executable
chmod +x /etc/profile.d/rbenv.sh

# Initialize rbenv
export RBENV_ROOT=/usr/local/rbenv
export PATH="$RBENV_ROOT/bin:$PATH"
eval "$(rbenv init -)"

# Install ruby
rbenv install $GLOBAL_RUBY_VERSION
rbenv global $GLOBAL_RUBY_VERSION

# Rehash to update rbenv shims
rbenv rehash