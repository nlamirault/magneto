Magneto
==========

[![License GPL 3][badge-license]][COPYING]

## Description

Setup your Continuous integration sytem on a [Mesos][] Cluster with Vagrant. [Magneto][] uses :
* [Jenkins][]  with the Mesos scheduler plugin installed
* [Mesos][] (0.18.2)
* [Mesos Docker Executor][] installed on all Mesos slave servers
* [Docker][] installed on all slave servers
* [Marathon][] (0.4.0) framework.
* [Chronos][] (2.1.0) framework
* [Aurora][] framework


## Prerequisites

It has been tested using :
* [Vagrant][] 1.4.3
* [Ansible][] 1.6.0
* [Virtualbox][] 4.2.2


## Installation

Display usage message :

    $ make help
    === Magneto ===
    single   : create a single instance with all services activated
    cluster  : creates multiple instances

### Single instance

* Create the VM :

        $ make single

* Mesos : `http://10.9.8.7:5050`
* Chronos : `http://10.9.8.7:8090`
* Marathon : `http://10.9.8.7:8086`
* Aurora : `http://10.9.8.7:9001`


### Cluster

* Create all virtual machines :

        $ make cluster


## License

Magneto is free software: you can redistribute it and/or modify it under the
terms of the GNU General Public License as published by the Free Software
Foundation, either version 3 of the License, or (at your option) any later
version.

Magneto is distributed in the hope that it will be useful, but WITHOUT ANY
WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A
PARTICULAR PURPOSE.  See the GNU General Public License for more details.

See [COPYING][] for the complete license.


## Changelog

A changelog is available [here](ChangeLog.md).


## Contact

Nicolas Lamirault <nicolas.lamirault@gmail.com>



[Magneto]: https://github.com/nlamirault/magneto
[COPYING]: https://github.com/nlamirault/magneto/blob/master/COPYING
[Issue tracker]: https://github.com/nlamirault/magneto/issues

[badge-license]: https://img.shields.io/badge/license-GPL_3-green.svg?style=flat

[Jenkins]: http://jenkins-ci.org
[Mesos]: http://mesos.apache.org
[Mesos Docker Executor]: https://github.com/mesosphere/mesos-docker
[Docker]: https://www.docker.io
[Marathon]: https://github.com/mesosphere/marathon
[Chronos]: http://airbnb.github.io/chronos
[Aurora]: http://aurora.incubator.apache.org
[Vagrant]: http://www.vagrantup.com
[Ansible]: http://www.ansible.com
[Virtualbox]: https://www.virtualbox.org
