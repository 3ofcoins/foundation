name "base"
description "Base role applied to all nodes."

run_list *[
  ( 'recipe[chef-solo-search]' if Chef::Config[:solo] ),
  'role[attributes]',
  'recipe[apt]',
  'recipe[ohai]',
  ( 'recipe[chef-client::config]' unless Chef::Config[:solo] ),
  'recipe[omnibus_updater]',
  'recipe[sudo]',
  'recipe[users::sysadmins]',
  'recipe[sanitize]',
  'recipe[hostname]',
  'recipe[scratch]'
].compact

default_attributes(
  :authorization => {
    :sudo => {
      :agent_forwarding => true,
      :groups => ['sysadmin'],
      :include_sudoers_d => true,
      :passwordless => true}},
  :domain => $realm.domain,
  :omnibus_updater => {
    :version => '11.12.2',
    :remove_chef_system_gem => true,
    :cache_dir => '/var/cache/chef' },
  :sanitize => {
    :iptables => false,
    :keep_access => ::Dir[$realm.path('data_bags/users/*.json')].empty?
  },
  :set_fqdn => "*.#{$realm.domain}",
  :tarsnapper => {
    :retention => '1d 30d 366d 18000d'
  })

instance_load_subdir
