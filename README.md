# PostgreSQL pgAdmin 4 with binary support

[![Docker Stars](https://img.shields.io/docker/stars/foxylion/pgadmin4.svg?style=flat-square)](https://hub.docker.com/r/foxylion/pgadmin4/) [![Docker Pulls](https://img.shields.io/docker/pulls/foxylion/pgadmin4.svg?style=flat-square)](https://hub.docker.com/r/foxylion/pgadmin4/)

## Quick Start

```
docker run -d --name pgadmin -p 5433:80 foxylion/pgadmin4
```

Now you can access your pgAdmin instance on [localhost:5433](http://localhost:5433/).

## Environment Variables

| Variable Name | Description | Default |
| ------------- | ----------- | ------- |
| SERVER_MODE | When set to true authentification is required to acces pgAdmin 4 | `False` |
| MAIL_SERVER | Mail server for sending mails (e.g. forgotten passwords) | `mail.example.tld` |
| MAIL_PORT | Mail server port | `465` |
| MAIL_USE_SSL | When enabled ssl is used to connect to the mail server | `True` |
| MAIL_USERNAME | Username used to authenticate against the mail server | `username` |
| MAIL_PASSWORD | Password used to authenticate against the mail server | `password` |


## Binary Support (pg_dump, pg_restore)

This version of pgAdmin 4 brings the binaries required to backup/restore databases
with it. You can do backups of PostgreSQL 9.5 servers.

To enable the feature go to File -> Preferences -> Binary paths and set them to `/usr/bin`.

When doing a backup it is recommended to setup a directory where the backups can
be stored outside of the container.

## Data Storage Outside of the Container

Just pass `-v /my/local/directory:/data` to the `docke run` command. This will store
the session and configuration database in the mounted folder. The storage is also there.
