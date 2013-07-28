# CentOS 6.4 LAMP

Installs:

- Apache
- MySQL
- PHP
- composer

## Installation

1. Install VirtualBox
2. Install Vagrant
3. Clone this repo into a local folder

	```bash
$ git clone git@github.com:stevenalexander/centos_lamp_vagrant_chef.git
$ git submodule init
$ git submodule update
```

4. Start Vagrant

	`cd` into the checked out folder to start the VM:

	```bash
$ vagrant up
```

## Usage

Put PHP projects into the src folder and add additional virtual hosts.

To connect to the db either ssh in or create a new user and use ssh tunnel connection, Sequel Pro settings are below:

- Name: mydbconnection
- MySQL Host: 10.0.2.15 (default)
- Usernamer: mydbuser
- Password: mydbpassword
- Database: mydb
- Port:  3306 (default)
- SSH Host: 127.0.0.1
- SSH User: vagrant (default)
- SSH Password: vagrant (default)
- SSH Port: 2222 (default)