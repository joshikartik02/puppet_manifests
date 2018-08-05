group { 'file_group':
  ensure => present,
}

user { 'file_user':
  ensure => present,
  gid    => 'file_group',
}

file { '/tmp/my_files':
  ensure    => directory,
  before    => [File['/tmp/my_files/file1.txt'], File['/tmp/my_files/file2.txt']],
  require  => User['file_user'],
}

file { '/tmp/my_files/file1.txt':
  ensure => file,
  owner  => 'root',
  group  => 'file_group',
}

file { '/tmp/my_files/file2.txt':
 ensure => file,
  owner => 'file_user',
  group => 'file_group',
}
