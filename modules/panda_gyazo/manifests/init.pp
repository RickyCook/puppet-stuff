class panda_gyazo( $browser = 'google-chrome', $clipboard = 'xclip' ) {
	file { '/usr/local/bin/gyazo':
		content => template('gyazo/gyazo.erb'),
		owner => 'root',
		group => 'root',
		ensure => file,
		mode => '0755',
	}
}
