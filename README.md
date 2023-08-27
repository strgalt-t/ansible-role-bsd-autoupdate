Role Name
=========

This role utilizes a shell script and cron to implement an autoupdate mechanism for pkg. __Note__: the idea and the code for the shell script has been taken from the [Tor Project documentation](https://community.torproject.org/relay/setup/guard/freebsd/updates/).

Requirements
------------

This role expects the `pkg` package manager to be installed:

```sh
pkg bootstrap -f
```

Role Variables
--------------

Available variables are listed below, along with default values (see `defaults/main.yml`):

```yaml
script_dir: /root/bin
```

Path where the pkg-upgrade script will be saved. Will be created if not existing.

```yaml
cron_month: '*'
cron_weekday: '*'
cron_hour: 0
cron_minute: 0
```

Cron settings when the pkg-autoupdate script is executed. By default, it's daily at midnight.

Dependencies
------------

None

Example Playbook
----------------

```yaml
- hosts: servers
  become: true
  roles:
    - strgalt_t.bsd_autoupdate
```

License
-------

GPLv3

Author Information
------------------

Role has been written by Jan Langrehr in August, 2023.
