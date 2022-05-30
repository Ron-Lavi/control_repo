class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDqttwRtXLM9t4HDzslapiTKF0FUcC2tQe8gM+gcy4fT90DNfKHG7cZXQ4qCjyi0KJIw9jipDfN+u2bep2Ka4WasekeIhNODeBtYtqA4cHyVqHnYwlxCWrHZ0jJMQbBV3C6IafTlmL/enbsoyvShBMyPiwmGVLm6+erMWA4PgTgUaFY6IhGrR80ZW6aQvMRVspRprQgLXGDRySnFDp93ni5FvufjtorjU5MoiRroMA1rLsGvg5uovPlrJgGbAX2AQ3LL36OQO2b9OrAfbZ47+Hhq3N3PnHROwL8eZfCtM1l3wNtKeryInguiXnl6KXrzOsPX6AgoxrAVhNOtRHBecE7',
  }  
}
