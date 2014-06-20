# Install Node.js



class nodejs {
    include apt

    exec { 'apt-get update':
      command => 'apt-get update'
    }

    apt::ppa { 'ppa:chris-lea/node.js': }

    package {
      'nodejs':
        ensure  => installed,
        require => [Exec['apt-get update'],Apt::Ppa['ppa:chris-lea/node.js']],
    }

}

include nodejs
