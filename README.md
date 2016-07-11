ansible-homebrew
====================================

[![Build Status](https://travis-ci.org/FGtatsuro/ansible-homebrew.svg?branch=master)](https://travis-ci.org/FGtatsuro/ansible-homebrew)

Ansible role for homebrew.

Requirements
------------

The dependencies on other softwares/librarys for this role.

- OSX

Role Variables
--------------

The variables we can use in this role.

|name|description|default|
|---|---|---|
|homebrew_prefix|Directory for homebrew related files.|/usr/local|

- `homebrew_prefix` direcotry and files under it
  - are owned by user playbook executes.
  - are grouped by admin.
  - have file mode 0755

Role Dependencies
-----------------

The dependencies on other roles for this role.

- FGtatsuro.python-requirements

Example Playbook
----------------

    - hosts: all
      roles:
         - { role: FGtatsuro.homebrew }

Test on local Docker host
-------------------------

This project run tests on Travis CI, but we can also run them on local Docker host.
Please check `install`, `before_script`, and `script` sections of `.travis.yml`.
We can use same steps of them for local Docker host.

Local requirements are as follows.

- Ansible (>= 2.0.0)
- Docker (>= 1.10.1)

License
-------

MIT
