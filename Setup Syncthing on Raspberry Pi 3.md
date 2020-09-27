2019-07-16 update: Google: Introduction to Linux -> <http://www.tldp.org/LDP/intro-linux/intro-linux.pdf>
2020-09-27 update: Add [Syncthing folder list on Raspberry Pi 3](./Syncthing folder list on Raspberry Pi 3.md)

## Setup Syncthing on Raspberry Pi 3

2019-07-16 update.

- https://jaime.win/raspberri-resilio/> - Method 1
- [How to install Syncthing on Raspberry Pi + start on boot [semi-automatic] · GitHub](https://gist.github.com/hdml/7b079c114d3e20bf69f1) - Method 2
- [syncthing - Raspberry Pi Forums](https://www.raspberrypi.org/forums/viewtopic.php?t=167169) ->  <https://apt.syncthing.net/> - Method 3

2019-10-28 update.

* [Syncthing就是我要的同步备份软件 | 底噪](https://zhih.me/syncthing-the-best/) -> For setup Syncthing on Linux or MacOS.

#### Method 1) Install syncthing version that the OS system picks

Install syncthing:

```bash
# Update and install syncthing
$ sudo apt update
$ sudo apt install syncthing
```

Start syncthing

```bash
$ syncthing
```

#### Method 2) Install syncthing version that we choose

Or, we could install syncthing and setup it to start on boot (like [How to install Syncthing on Raspberry Pi + start on boot [semi-automatic] · GitHub](https://gist.github.com/hdml/7b079c114d3e20bf69f1) ):

Refer to [install_syncthing.sh](https://gist.githubusercontent.com/hdml/7b079c114d3e20bf69f1/raw/1cd3647b1db4f80726c145fba725e27993a7fcdb/install_syncthing.sh )

```bash
# Run install_syncthing.sh
$ curl -s https://gist.githubusercontent.com/hdml/7b079c114d3e20bf69f1/raw/1cd3647b1db4f80726c145fba725e27993a7fcdb/install_syncthing.sh | sudo bash
```

Start syncthing:

```bash
$ syncthing
```

Wait until you get something like:

```bash
INFO: Device 7NNIJMJ-RQ657WA-RI5YH6L-RQ657WA-RQ657WA-VGKSUYP-U6QBJNA-RQ657WA
write down this number or copy it if you SSH'd to your pi.
```

quit the operation using CTRL + C.

Change the config file so you can access the GUI from any PC within the network

```bash
$ nano ~/.config/syncthing/config.xml
```

Change `127.0.0.1` to `0.0.0.0`

```bash
<gui enabled="true" tls="false">
    <address>127.0.0.1:8384</address>
</gui>
```

OPTIONAL: if you forward port 8384 (or any port you would like to use) on your router to you pi, you can access the GUI from anywhere in the world as long as you know you home(public) IP address. Make sure you use https and enable authentication!

Start the syncthing service

```bash
$ sudo service syncthing start
```

on a PC in the same network, go to the GUI and disable automatic updates. GUI -> Settings -> Disable Automatic updates hit save and restart syncthing.

If there's a new version of syncthing, use

```bash
$ sudo syncthing -upgrade
```

Then reboot the system.

```bash
$ sudo reboot
```

To remove syncthing use

```bash
$ sudo rm -r /opt/syncthing
$ sudo rm /usr/bin/syncthing
$ sudo rm -r /home/pi/.config/syncthing
$ sudo rm /etc/init.d/syncthing
```

optionally, delete any folder used with syncthing.

`install_syncthing.sh`

```bash
#!/bin/sh

if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

mkdir -p /opt/syncthing
cd /opt/syncthing
wget https://github.com/syncthing/syncthing/releases/download/v0.12.19/syncthing-linux-arm-v0.12.19.tar.gz
tar -xzvf *.tar.gz
mv syncthing*/* .
rm *.tar.gz
rm -r syncthing*/
ln -s /opt/syncthing/syncthing /usr/bin/syncthing
cd /etc/init.d/
wget https://gist.githubusercontent.com/hdml/7b079c114d3e20bf69f1/raw/e42d18d8fb966e4ff16135035720d97139867bad/syncthing
chmod +x /etc/init.d/syncthing
update-rc.d syncthing defaults
```

`syncthing`

```bash
#!/bin/sh
### BEGIN INIT INFO
# Provides: syncthing
# Required-Start: $local_fs $remote_fs
# Required-Stop: $local_fs $remote_fs
# Should-Start: $network
# Should-Stop: $network
# Default-Start: 2 3 4 5
# Default-Stop: 0 1 6
# Short-Description: Multi-user daemonized version of syncthing.
# Description: Starts the syncthing daemon for all registered users.
### END INIT INFO

# Replace with users you want to run syncthing clients for
# syncthing_USERS="<your name here>"
syncthing_USERS="pi"
DAEMON=/opt/syncthing/syncthing

startd() {
  for stuser in $syncthing_USERS; do
    HOMEDIR=$(getent passwd $stuser | awk -F: '{print $6}')
    if [ -f $config ]; then
      echo "Starting syncthing for $stuser"
      start-stop-daemon -b -o -c $stuser -S -u $stuser -x $DAEMON
    else
      echo "Couldn't start syncthing for $stuser (no $config found)"
    fi
  done
}

stopd() {
  for stuser in $syncthing_USERS; do
    dbpid=$(pgrep -fu $stuser $DAEMON)
    if [ ! -z "$dbpid" ]; then
      echo "Stopping syncthing for $stuser"
      start-stop-daemon -o -c $stuser -K -u $stuser -x $DAEMON
    fi
  done
}

status() {
  for stuser in $syncthing_USERS; do
    dbpid=$(pgrep -fu $stuser $DAEMON)
    if [ -z "$dbpid" ]; then
      echo "syncthing for USER $stuser: not running."
    else
      echo "syncthing for USER $stuser: running (pid $dbpid)"
    fi
  done
}

case "$1" in
  start) startd
    ;;
  stop) stopd
    ;;
  restart|reload|force-reload) stopd && startd
    ;;
  status) status
    ;;
  *) echo "Usage: /etc/init.d/syncthing {start|stop|reload|force-reload|restart|status}"
     exit 1
   ;;
esac

exit 0
```

#### Method 3) Install syncthing version that syncthin.net updates it

###### Debian/Ubuntu Packages

The `stable` channel is updated with stable release builds, usually every first Tuesday of the month.

```bash
# Add the release PGP keys:
curl -s https://syncthing.net/release-key.txt | sudo apt-key add -

# Add the "stable" channel to your APT sources:
echo "deb https://apt.syncthing.net/ syncthing stable" | sudo tee /etc/apt/sources.list.d/syncthing.list

# Update and install syncthing:
sudo apt-get update
sudo apt-get install syncthing
```

The `candidate` channel is updated with release candidate builds, usually every second Tuesday of the month. These predate the corresponding stable builds by about three weeks.

```bash
# Add the release PGP keys:
curl -s https://syncthing.net/release-key.txt | sudo apt-key add -

# Add the "candidate" channel to your APT sources:
echo "deb https://apt.syncthing.net/ syncthing candidate" | sudo tee /etc/apt/sources.list.d/syncthing.list

# Update and install syncthing:
sudo apt-get update
sudo apt-get install syncthing
```

------

Depending on your distribution, you may see an error similar to the following when running `apt-get`:

```bash
E: The method driver /usr/lib/apt/methods/https could not be found.
N: Is the package apt-transport-https installed?
E: Failed to fetch https://apt.syncthing.net/dists/syncthing/InRelease
```

If so, please install the `apt-transport-https` package and try again:

```bash
sudo apt-get install apt-transport-https
```

If you insist, you can also use the above URLs with `http` instead of `https`.

