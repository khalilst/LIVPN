# L2TP/IPSec VPN For Linux Environments

The VPN client tool to connect to the L2TP/IPSec VPN server.

This project inspired from [Dockage](https://github.com/mbizhani/Dockage).

## Installation

Run the following commands to install required packages:

```
sudo apt update
sudo apt -y upgrade
sudo apt install --no-install-recommends -y openvpn squid3 dante-server multitail pptp-linux
reboot
```

Or simply run this one:

```
sudo ./install.sh
```

Then make a copy from `.env.example` and put your credential in your `.env` file:

```
cp .env.example .env
# The credentials should be in the .env file
```

## Usage

**Start the VPN connection**:
```
sudo ./start.sh
```
*Note*: After establishing the connection, your internet depends on the VPN server.

**Stop the VPN connection**:
```
sudo ./stop.sh
```

## Contributers

- @khalilst
- @mbizhani
- @arezaiezr
