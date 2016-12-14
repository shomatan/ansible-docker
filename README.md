# Ansible role: docker
Installs docker.

## Requirements
[Virtualbox](https://www.virtualbox.org/) is required when OS Darwin.  
Include role [virtualbox](https://github.com/shomatan/ansible-virtualbox.git).

## Supported Platforms
+ EL 7
+ Darwin

## Role Variables
None.

## Dependencies
None.

## Example playbook

```yaml
- hosts: all
  roles:
    - { role: docker }
  vars:

```
