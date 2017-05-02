Ansible Role: Docker
=========

[![Build Status](https://travis-ci.org/shomatan/ansible-role-docker.svg?branch=master)](https://travis-ci.org/shomatan/ansible-role-docker)

Installs docker.

Requirements
------------

None.

Role Variables
--------------

    docker_insecure_registries: []


Dependencies
------------

- shomatan.repo-epel

Example Playbook
----------------

    - hosts: servers
      roles:
         - { role: shomatan.docker }

License
-------

MIT

Author Information
------------------

Shoma Nishitateno