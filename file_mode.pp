$file_mode = $facts['os']['name'] ? {
  'Debian' => '0600',
  'CentOS' => '0644',
  'RedHat' => '0700',
  }

file {"/tmp/kartik-1":
  ensure => file,
  mode   => $file_mode,
  owner  => root,
  group  => root,
  }
