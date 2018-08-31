[![Build Status](https://travis-ci.com/mediapeers/ansible-role-instrumental.svg?branch=master)](https://travis-ci.com/mediapeers/ansible-role-instrumental)

# Role for Instrumental agent

Role that installs and configures [instrumentald](https://github.com/Instrumental/instrumentald) the agent for [Instrumentalapp](https://instrumentalapp.com).

## Requirements

A instrumentalapp account and a project token. Designed for Ubuntu server, but might also work on other DEB based distros.

## Role Variables

- `instrumental_token: 'your-project-token'` - set to our token. Required!
- `instrumental_system_metrics: [ cpu, disk, load ]` - Enbale system metrics by adding keywords, falls back to all available.
- `instrumental_service_docker: ["unix:///var/run/docker.sock"]` - Enable docker monitoring by adding docker socket to list. Default: disabled
- `instrumental_service_redis: ["tcp://localhost:6379"]` - Enable redis monitoring by adding monitoring endpoint
- `instrumental_service_memcached: ["localhost:11211"]` - Enable memcached monitoring by adding connection info
- `instrumental_service_mongodb: ["localhost:27017"]` - Enable mongodb monitoring by adding connection infor
- `instrumental_service_nginx: ["http://localhost:80/status"]` - Enable nginx monitoring by adding status page endpoint
- `instrumental_service_mysql: ["root@tcp(localhost:3306)"]` - Enable mysql monitoring by adding connection infor
- `instrumental_service_postgresql: ["postgres://posgres@localhost?sslmode=disable"]` - Enable posgresql monitoring by adding connection info

## Dependencies

Depends on no other roles.

## Example Playbook

Example playbook using this role:

    - hosts: servers
      roles:
         - { role: username.rolename, instrumental_token: 42 }

## License

BSD

## Author Information

Stefan Horning <horning@mediapeers.com>
