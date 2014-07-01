smo921/docker
======
Docker container playground

Basically a vagrant managed virtualbox runnig Ubuntu Precise64 that has docker installed.  There are currently two _features_: creating docker container images, and custom compiling and creating package files using docker containers as the build environment.

Although I run this primarily on Linux hosts, it uses VirtualBox to make it more portable for now.  With vagrant adding docker support I may change this.

# Images
All the sub-directories found in images/ are currently built using ansible.

* Base - Base container image
* Dashing - Dashing in a container (http://dashing.io)
* Puppet - Installs puppet inside a container - intended as a base container for puppet module testing
* Sab - Sabnzbd: -v /path/to/sab/data:/data -p 8080:8080
* Sick - sickbeard: -v /path/to/sickbeard/data:/data -p 8081:8081


# Packaging
The idea is to have packaging available within docker container environments for lower overhead.

* Ruby - Builds Ruby into a .deb package from scratch in a container

# Requirements
* VirtualBox
* Vagrant
* Ansible
