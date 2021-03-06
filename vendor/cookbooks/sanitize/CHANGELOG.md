Changes
=======

0.5.3
-----
* `sanitize.locale.available` & `sanitize.locale.default` attributes

0.5.2
-----
* Fix dependencies

0.5.1
-----
* Drop helpers recipe, install gems instead

0.5.0
-----
* New recipe to install chef-helpers and chef-sugar.

0.4.2
-----
* Support Ubuntu PPAs

0.4.1
-----
* Refactor iptables code, support multiport module.
* Don't bomb on OSX

0.4.0
-----
* Split into multiple cookbooks

0.3.1
-----
* Don't upload backup files

0.3.0
-----
* include recipe `chef-client::config`
* add attribute `sanitize.keep_access` to enable debugging access
  problems
* don't lock down logfile if it doesn't exist
* don't include `build-essential` recipe, Omnibus Chef includes
  ruby-shadow
* include recipe `omnibus_updater`
* unbreak bootstrap: continue Chef run if deleting `ubuntu` user is not possible

0.2.1
-----
* Include trailing newline in /etc/timezone to avoid regeneration
* Don't run locale-gen if system knows about en_US.UTF-8

0.2.0
-----
* Chef 11 compatibility
* Configure iptables not only for ssh
* Use `user` resource instead of `usermod` / `userdel` hacks

0.1.0
-----
* Initial release of sanitize

- - - 
Check the [Markdown Syntax Guide](http://daringfireball.net/projects/markdown/syntax) for help with Markdown.

The [Github Flavored Markdown page](http://github.github.com/github-flavored-markdown/) describes the differences between markdown on github and standard markdown.
