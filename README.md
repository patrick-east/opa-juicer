Helper scripts to setup a benchmark host and to run them remotely for OPA.

How-to:

1) Setup a host, you'll need the IP or hostname and passwordless ssh pre-configured.
2) Run `init-host.sh <ip/hostname>` (this can be re-run as much as you need).
3) Make changes to OPA or whatever
4) Run `remote-bench.sh`, look at the script for some vars you can tweak.
