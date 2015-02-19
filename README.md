Magneto
==========

[![License GPL 3][badge-license]][COPYING]

## Description

Setup your Continuous integration sytem on a [Mesos][] Cluster with Vagrant. [Magneto][] uses :
* [Docker][]
* [Mesos][] (0.20.1) `http://10.9.8.7:5050`
* [Marathon][] (0.7.5) framework. `http://10.9.8.7:8080`

## Prerequisites

It has been tested using :
* [Virtualbox][] 4.2.2
* [Vagrant][] 1.4.3

## Installation

* Creates the VM :

        $ vagrant up

* Check services and wait until all services are running:

        $ vagrant ssh
        > fleetctl list-units
        UNIT                    MACHINE                 ACTIVE          SUB
        marathon.service        35127efe.../10.9.8.7    activating      start-pre
        mesos-master.service    35127efe.../10.9.8.7    activating      start-pre
        mesos-slave.service     35127efe.../10.9.8.7    activating      start-pre
        zookeeper.service       35127efe.../10.9.8.7    active          running


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
[Virtualbox]: https://www.virtualbox.org
