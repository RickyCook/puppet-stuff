class workstation {
	class { 'panda_puppet': servers => [
		'puppet.thatpanda.com',
	] }
	class { 'panda_sublimetext': }
	class { 'panda_gyazo': }
}
class home {
	class { 'panda_puppet': servers => [
		'puppet.thatpanda.com',
	] }
}
class work {
	class { 'panda_puppet': servers => [
		'puppet.thatpanda.com',
	] }
}
