# Role for Instrumental agent

Role that installs and configures [instrumentald](https://github.com/Instrumental/instrumentald) the agent for [Instrumentalapp](https://instrumentalapp.com).

## Requirements

A instrumentalapp account and a project token. Designed for Ubuntu server, but might also work on other DEB based distros.

## Role Variables

- `instrumental_token: 'your-project-token'` - set to our token. Required!
- `instrumental_system_metrics: [ cpu, disk, load ]` - Enbale system metrics by adding keywords, falls back to all available.
- `instrumental_service_docker: ["unix:///var/run/docker.sock"]` - Enable docker monitoring by adding docker socket to list. Default: disabled
- `instrumental_service_redis: ["tcp://localhost:6379"]` - Enable redis monitoring by adding monitoring endpoint
- `instrumental_service_memcached: []`
- `instrumental_service_mongodb: []`
- `instrumental_service_nginx: []`
- `instrumental_service_mysql: []`
- `instrumental_service_postgresql: []`

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
