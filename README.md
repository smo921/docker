smo921/docker
======

Docker container playground


Basically a vagrant managed virtualbox runnig Ubuntu Precise64 that builds all the docker images found in the images directory.


Images:
* Base - Base container image
* Dashing - Dashing in a container (http://dashing.io)
* Puppet - Installs puppet inside a container - intended as a base container for puppet module testing
* Ruby - Builds a ruby .deb package from scratch in a container
* Sab - Sabnzbd: -v /path/to/sab/data:/data -p 8080:8080
* Sick - sickbeard: -v /path/to/sickbeard/data:/data -p 8081:8081

