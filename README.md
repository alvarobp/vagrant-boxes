Vagrant box definitions for [Veewee](https://github.com/jedi4ever/veewee)

## Debian-7.1.0-amd64-netboot-rbenv

Adds:
  - git 1.8 compiled from source
  - rbenv system wide installed

Template is imported with:

```shell
bundle exec veewee vbox define 'debian-rbenv-7.1.0' 'Debian-7.1.0-amd64-netboot'
mkdir -p templates
mv definitions/debian-rbenv-7.1.0 templates/Debian-7.1.0-amd64-netboot-rbenv
```

Box is generated with:

```shell
bundle exec veewee vbox define 'debian-rbenv-7.1.0' 'Debian-7.1.0-amd64-netboot-rbenv'
bundle exec veewee vbox build 'debian-rbenv-7.1.0'
```