# A Vagrant Box 
Vagrant box for Sails projects. Contains node.js, grunt, sails, MySQL, etc. See `bootstrap.sh` to see what will be installed.

## Prerequisites
Requires [vagrant](http://vagrantup.com) and VirtualBox. Clone this repo into a folder next to your sources, run `vagrant up`. 

## Setup
This repo should be cloned into the same base folder that contains the projects you want to run inside the VM. Resulting structure should look something like this:

```
~/projects/
-- vagrant-sails  # <-- this repo
-- project1
-- project2
```

## Usage

* Parent of the directory containing the `Vagrantfile` will be mapped into `/src` inside the VM
* Sails default port `1337` will be mapped to host port `1337`
