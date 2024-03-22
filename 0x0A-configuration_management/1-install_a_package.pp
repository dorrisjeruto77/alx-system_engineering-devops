# Define a Puppet class to manage the installation of Flask
class install_flask {
    
    # Execute pip3 command to install Flask version 2.1.0
    exec { 'install_flask':
        command => '/usr/bin/pip3 install flask==2.1.0',
        unless  => '/usr/bin/pip3 show flask | grep Version | grep -q 2.1.0',
    }
}

# Include the class to apply its configuration
include install_flask
