node 'sulfurium.trust.abb.ixa.net.au' {
	class { 'panda_puppet': servers => [
		'puppet.thatpanda.com',
	] }
	class { 'panda_sublimetext': }
}
