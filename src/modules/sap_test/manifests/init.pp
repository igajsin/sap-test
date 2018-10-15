# === Parameters
#
# [*package*]
#  (optional) String. Name of package to install.
#  Defaults to undef
#
# [*package_version*]
#  (optional) String. A version for a package to install.
#  Defaults to undef
#
# [*result*]
#  (optional) String. A place to put results of the testing script (see below).
#  Defaults to '/tmp/test/process'
#
# [*script*]
#  (optional) String. A script that provides information about processes.
#  Defaults to '/tmp/test/script.sh'
#
# [*system_file*]
#  (optional) String. A file with ip information.
#  Defaults to '/tmp/test/system'
#
# [*work_dir*]
#  (required) String. A directory for files of the test.
#  Defaults to '/tmp/test'
#
class sap_test(
  $package         = undef,
  $package_version = undef,
  $result          = '/tmp/test/process',
  $script          = '/tmp/test/script',
  $system_file     = '/tmp/test/system',
  $work_dir        = '/tmp/test',
)
{
  $my_ip = $::ipaddress

  if $package and $package_version {
    package { $package:
      name => $package,
      ensure => $version,
    }
  }

  file { $work_dir:
    ensure => directory,
    mode   => '0755'
  } ->
  file { $system_file:
    ensure => present,
    mode   => '0644',
    content => template('sap_test/system.erb')
  } ->
  file { $script:
    ensure => present,
    mode   => '0755',
    source => 'puppet:///modules/sap_test/script.sh',
  } ->
  exec { $script:
    command => "${script} > ${result}",
  }
}
