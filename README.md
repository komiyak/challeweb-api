# challeweb-api

The api server for the `challeweb` application.

# Setup Guide

If you can not install the `pg` gem with following.

```
Installing pg 1.1.4 with native extensions
Gem::Ext::BuildError: ERROR: Failed to build gem native extension.

checking for pg_config... no
```

Try to install the `libpq` lib.
For example:

```
sudo apt install libpq-dev
```
See https://stackoverflow.com/a/27277212
