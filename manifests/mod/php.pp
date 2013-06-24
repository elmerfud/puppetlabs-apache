class apache::mod::php {
  apache::mod { 'php5':
    lib => 'libphp5.so'; }
  file { 'php.conf':
    ensure  => file,
    path    => "${apache::mod_dir}/php.conf",
    content => template('apache/mod/php.conf.erb');
  }
}
