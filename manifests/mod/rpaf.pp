class apache::mod::rpaf {
  apache::mod { 'rpaf': }
  # Template uses no variables
  file { 'rpaf.conf':
    ensure  => file,
    path    => "${apache::mod_dir}/rpaf.conf",
    content => template('apache/mod/rpaf.conf.erb'),
  }
}
