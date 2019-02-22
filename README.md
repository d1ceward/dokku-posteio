[![GitHub release](https://img.shields.io/github/release/D1ceWard/dokku-posteio.svg)](https://github.com/D1ceWard/dokku-posteio)
[![Poste.io](https://img.shields.io/badge/Poste.io-2.1.1-blue.svg)](https://poste.io/changelog)
[![Dokku](https://img.shields.io/badge/Dokku-v0.14.5-blue.svg)](https://github.com/dokku/dokku/releases/tag/v0.14.5)
[![Maintenance](https://img.shields.io/badge/Maintained%3F-yes-green.svg)](https://github.com/D1ceWard/dokku-posteio/graphs/commit-activity)
# Poste.io plugin for Dokku (v1.1.0 BETA)

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

## Download plugin
Log onto your Dokku Host to download and install plugin:
```bash
dokku plugin:install https://github.com/D1ceWard/dokku-posteio.git
```

## Domain name
Next setup domain name for posteio:

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

Now click on issue new certificate or choose existing one, after this tell plugin you enabled SSL by:
```bash
dokku posteio:toggle-ssl
```

## Wrapping up

Your Poste.io instance should now be available and secure on [https://mail.example.com](https://mail.example.com).
