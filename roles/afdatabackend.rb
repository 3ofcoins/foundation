name 'afdatabackend'

run_list 'role[base]',
         'recipe[ssl-key-vault]',
         'recipe[af_databackend]'

default_attributes(
  ssl_certificates: {
    'star.analyticsfire.com' => true
  })
