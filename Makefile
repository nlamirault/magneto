# Copyright (C) 2014  Nicolas Lamirault <nicolas.lamirault@gmail.com>

# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

.PHONY:	help up provision halt destroy

help:
	@echo "=== Magneto ==="
	@echo "  up  ENV=<env>        : Creates or start Magneto"
	@echo "  provision ENV=<env>  : Provision Magneto"
	@echo "  halt ENV=<env>       : Stop Magneto"
	@echo "  destroy ENV=<env>    : Destroy Magneto"
	@echo "with env = single|cluster"

up:
	cd $(ENV); vagrant up; cd -

provision:
	cd $(ENV); vagrant provision; cd -

ssh:
	cd $(ENV); vagrant ssh; cd -

halt:
	cd $(ENV); vagrant halt; cd -

destroy:
	cd $(ENV); vagrant destroy; cd -
