# Using asdf tools with sudo

Following the
[installation instructions](https://hexdocs.pm/nerves/installation.html)
for Nerves...

After issuing these commands:

```sh
$ sudo apt install build-essential automake autoconf git squashfs-tools ssh-askpass pkg-config curl libmnl-dev libnl-genl-3-dev libssl-dev libncurses5-dev help2man libconfuse-dev libarchive-dev
$ asdf plugin add fwup https://github.com/fwup-home/asdf-fwup.git
$ asdf install fwup latest
$ asdf set -u fwup latest
```

`asdf` then wrote the fellowing,
which may be useful one day (since `fwup` may require `sudo` do write to an SD card):

```
fwup 1.13.2 installation was successful!

******* IMPORTANT: Usage with sudo ********
By default, tools installed with asdf are not available when using sudo since
sudo resets some/all of the shell environment.

A common workaround is to include the -E option to sudo, which preserves the
environment. However, this does not preserve the PATH variable, so you will need
to invoke fwup with the absolute path like so:

sudo -E $(asdf which fwup) <fwup-arguments>

Alternatively, you can modify your sudoers policy so that it sets your PATH
correctly. This is a more permanent solution that should also work for other
asdf-managed tools.

  1. Ensure you have the following line in your shell config (~/.bashrc):

     For asdf 0.16 and later:
     export ASDF_DATA_DIR="/home/luciano/.asdf"

     For asdf 0.15 and earlier:
     export ASDF_DIR="/home/luciano/.asdf"

     Your asdf version is v0.18.0 (revision 2114f1e).

  2. Using visudo, add the following lines to /etc/sudoers.d/01-asdf or /etc/sudoers:

     Defaults:luciano    secure_path="/home/luciano/.asdf/shims:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"
     Defaults:luciano    env_keep += "ASDF_DIR ASDF_DATA_DIR"

```