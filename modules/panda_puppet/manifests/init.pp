class panda_puppet( $servers = ['puppet'] ) {
	service { 'puppet':
		enable => false,
	}

	file { '/usr/local/bin/puppet_all':
		content => template('panda_puppet/puppet_all.erb'),
		owner => 'root',
		group => 'root',
		ensure => file,
		mode => '0755',
	}

	$minute1 = fqdn_rand( 15 )
	$minute2 = $minute1 + 15
	$minute3 = $minute2 + 15
	$minute4 = $minute3 + 15
	cron { 'puppet':
		command => '/usr/local/bin/puppet_all agent --test',
		user => 'root',
		minute => [$minute1, $minute2, $minute3, $minute4],
		require => File['/usr/local/bin/puppet_all'],
	}
}
