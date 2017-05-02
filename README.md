Ansible role: docker
=========

[![Build Status](https://travis-ci.org/shomatan/ansible-docker.svg?branch=master)](https://travis-ci.org/shomatan/ansible-docker)

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