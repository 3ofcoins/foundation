source "https://rubygems.org/"

gem "chef", "~> 11.4.0"
gem "knife-dwim"
gem "thor"
gem "foodcritic"
gem "strainer"
gem "vendorificator"

gem "omnibus",
    :git => "git://github.com/opscode/omnibus-ruby.git",
    :branch => 'master'

# Needed by code in lib/ - probably better in a gemspec
gem "mixlib-config"
gem "net-ssh"

group :development do
  gem "pry"
  gem "awesome_print"
end

# Local library path
_lib_dir = File.join(File.dirname(__FILE__), 'lib')
$:.unshift(_lib_dir) unless $:.include?(_lib_dir)
