Magneto
==========

[![License GPL 3][badge-license]][COPYING]

## Description

[Magneto][] is a Continuous integration system build using :
* [Jenkins][]  with the Mesos scheduler plugin installed
* [Apache Mesos][] (0.18.2)
* [Mesos Docker Executor][] installed on all Mesos slave servers
* [Docker][] installed on all slave servers
* [Marathon][] (0.4.0) framework.
* [Chronos][] (2.1.0) framework
* [Aurora][] framework

It has been tested using [Vagrant][] 1.4.3 and [Ansible][] 1.6.0

## Installation

* Creates the VM :

        $ vagrant up


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
[Apache Mesos]: http://mesos.apache.org
[Mesos Docker Executor]: https://github.com/mesosphere/mesos-docker
[Docker]: https://www.docker.io
[Marathon]: https://github.com/mesosphere/marathon
[Chronos]: http://airbnb.github.io/chronos
[Aurora]: http://aurora.incubator.apache.org
[Vagrant]: http://www.vagrantup.com
[Ansible]: http://www.ansible.com
