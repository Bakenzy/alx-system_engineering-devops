# Configures my client ssh configuration
exec {'Turn off passwd':
  path    => '/usr/bin:/bin',
  command => 'echo "    PasswordAuthentication no" >> /etc/ssh/ssh_config',
  returns => [0, 1],
}
exec {'Identity file is school':
  path    => '/usr/bin:/bin',
  command => 'echo "    IdentityFile ~/.ssh/school" >> /etc/ssh/ssh_config',
  returns => [0, 1],
}
