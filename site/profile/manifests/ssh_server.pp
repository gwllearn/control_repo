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
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDEj4tVYlIg15IUBK2icVGmDBXUGSTqjeTl96EKyDZDNYMhUq/Ep3u7CDSt34MPsH9oWIqXmz2MF4KoAtmo/nFLabDh4tucn4mxGSKGVFhuwvNSSR3SOsvPSN7OqaHTY+2QlBOAgC8amat050FCGHOKllhtOLEMONPYM093Fx4pNhNDeyXLJCtBsyNd2EiepK0tJc0rHjFcOnVUlINoXIQvUyS9cqqcajgQsffomg9mVMZ5zP0ICSKCIqj1yYDFHXeUwYi2hpo3yfb1D1HwYcLx9OfmEkwbOOeeZHhqVBOL8mWBoJ29M7g6zPAoFQhMaK8UNrN8vjCRCXVcJ45LGsmb',
	}  
}
