class panda_sublimetext {
	$url = $architecture ? {
		/x86_64|amd64/ => 'http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%202.0.1%20x64.tar.bz2',
		/x86|i386/ => 'http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%202.0.1.tar.bz2',
	}
	exec { 'install_puppet':
		command => "wget -O /tmp/sublime.tar.bz2 $url && tar --overwrite -xjf /tmp/sublime.tar.bz2 -C /opt",
		unless =>"sh -c 'test -f \"/opt/Sublime Text 2/sublime_text\" && [ `/opt/Sublime\ Text\ 2/sublime_text --version|grep --only-matching \"[0-9]*$\"` -ge 2217 ]'",
	}
}
