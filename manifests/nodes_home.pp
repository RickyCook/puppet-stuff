node 'knuckles' {
	class { 'panda_puppet': servers => [
		'puppet.thatpanda.com'
	] }
	class { 'panda_sublimetext' }
}
