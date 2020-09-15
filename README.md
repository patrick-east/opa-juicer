Helper scripts to setup a benchmark host and to run them remotely for OPA.

Prereqs:

1) Setup a host, you'll need the IP or hostname and passwordless ssh pre-configured
2) Have ansible installed (ez mode `brew install ansible`)

Doing stuff:
1) Run `init-host.sh <ip/hostname>` (this can be re-run as much as you need).
2) Make changes to OPA or whatever
3) Run `remote-bench.sh` for benchmarks or `remote-test.sh` for unit tests, look at the scripts for some vars you can tweak.
