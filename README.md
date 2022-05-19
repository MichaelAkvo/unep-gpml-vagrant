If you happen to be an Intel Mac user,
this might help with your performance issues when starting up [unep-gpml]

To use, install [vagrant] and [virtualbox] then run

```bash
vagrant up
vagrant ssh
# now you're in the VM
cd unep-gpml
docker-compose up
# Grab a coffee or tea, because this will take a while...
```

It's recommended to give the VM a good amount of RAM (4GB+) and CPU (4 cores),
 otherwise you might wait a while for thing to start.
Edit `Vagrantfile` (grep "cpus").

# Notes

This checks out the project into the VM, meaning you'll need to edit it with the VM.
The alternative is cloning unep-gpml into this folder.
It's mounted into the VM (probably with `sshfs` so, you might not see the performance you like).

You can then edit the files in there and modify your commands to get up and running to

```bash
vagrant up
vagrant ssh
# now you're in the VM
cd /vagrant/unep-gpml  # <-- notice the /vagrant, the CWD is mounted there
docker-compose up
# Grab a coffee or tea, because this will take a while...
```

[unep-gpml]: https://github.com/akvo/unep-gpml.git
[vagrant]: https://www.vagrantup.com/
[virtualbox]: https://www.virtualbox.org/
