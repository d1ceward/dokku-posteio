[![Poste.io](https://img.shields.io/badge/Poste.io-2.0.18-blue.svg)](https://hub.docker.com/r/analogic/poste.io/tags/)
[![Dokku](https://img.shields.io/badge/Dokku-v0.12.12-blue.svg)](https://github.com/dokku/dokku/releases/tag/v0.12.12)
[![Maintenance](https://img.shields.io/badge/Maintained%3F-yes-green.svg)](https://github.com/D1ceWard/grafana_on_dokku/graphs/commit-activity)
# Poste.io plugin for Dokku (BETA)

### What is Poste.io?

Poste.io is an full featured email server runing in a docker container. Read more at the [poste.io](https://poste.io/) website.

### What is Dokku?

[Dokku](http://dokku.viewdocs.io/dokku/) is the smallest PaaS implementation
you've ever seen - _Docker powered mini-Heroku_.

### Requirements
* A working [Dokku host](http://dokku.viewdocs.io/dokku/getting-started/installation/)

# Setup

**Note:** We are going to use the domain `mail.example.com` for demonstration
purposes. Make sure to replace it to your domain name.

## Domain name
Log onto your Dokku Host to setup domain name for posteio:

```bash
dokku posteio:set-domain mail.example.com
```

## Start container
To start using Poste.io you need to start his docker container:

``` bash
dokku posteio:start
```

## SSL Certificate

You will need to access Poste.io dashboard certificate page by going to:
```
System Settings > TLS Certificate
```
Or directly by accessing this url:
```
http://mail.example.com/admin/settings/#certificate
```

Now click on create certificate and follow the instructions

## Wrapping up

Your Poste.io instance should now be available and secure on [https://mail.example.com](https://mail.example.com).

