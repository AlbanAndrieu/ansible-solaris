ansible-solaris
====================

A role for installing solaris.

[![Build Status](https://api.travis-ci.org/AlbanAndrieu/ansible-solaris.png?branch=master)](https://travis-ci.org/AlbanAndrieu/ansible-solaris)

## Actions

- Ensures that solaris is installed

Usage example
------------

    - name: Install solaris
      connection: local  
      hosts: solaris
      remote_user: albandri
      roles:
        - role: solaris           
        
Requirements
------------

none

Dependencies
------------

https://github.com/AlbanAndrieu/ansible-vagrant-role.git

License
-------

MIT

#### Feedback, bug-reports, requests, ...

Are [welcome](https://github.com/AlbanAndrieu/ansible-solaris/issues)!

