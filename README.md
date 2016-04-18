# Schleuder on Docker

This repo contains docker configurations for Schleuder3, an encrypted group email system.

Uses schleuder3 beta, because it seems to actually be installable on modern systems. See:

* https://git.codecoop.org/schleuder/schleuder3
* https://git.codecoop.org/schleuder/schleuder-conf
* https://git.codecoop.org/schleuder/webschleuder3

This will mount schleuder settings to ``/srv/data/live/schleuder/etc`` and it's database
to ``/srv/data/live/schleuder/db``. Generate a new configuration by running ``schleuder
install`` inside the container.

**You need to edit bunches of config files before any of this works.**

Log into the webinterface with email "root@localhost" and password "slingit!".

### TODO

* How are we going to have our MTA invoke schleuder? Maybe it should live in the same 
  docker instance.
* Can ``webschleuder`` access ``schleuderd`` if it's only bound to localhost?
