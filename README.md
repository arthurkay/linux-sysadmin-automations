# GETTING STARTED

## SysAdmin Automation Script

>This repo is just a list of server automation scripts that I use.
>Because the content of this repository are tools I use, this is a living repository that I'll be adding more and more tools.

## SCRIPTS

### [backup.py](backup.py)

A python script that backs up a database everytime it runs.
Execute it with:

```bash

python backup.py

```

And the script return with the parameters needed for it to run.

## [delete.py](delete.py)

A python script that deletes old files.
This is useful in cases where you need to delete old redundant files.
Execute it with:

```bash

python delete.py

```

And the script return with the parameters needed for it to run.

## Persistent In Memory IP Address Assignment

In memeory IP Addresses assigned to the loop back interface when stepping up a VLAN only last for the current session.
To make them go beyond that we daemonize the process of creating and deleting these ip addresses.

To do this, add the ip addresses, you intended to the [ipcreate.service](strongswan/ipcreate.service) file separated by a space
as shown below:


```bash
[Unit]
Description=IP CREATE - Create in memeory IP addresses
After=network.target
After=network-online.target
Requires=strongswan.service
AssertPathExists=/sysadmin/strongswan/

[Service]
Type=oneshot
ExecStart=/usr/bin/python /sysadmin/strongswan/create.py 192.168.14.22 192.168.14.23
ExecStop=/usr/bin/python /sysadmin/strongswan/delete.py 192.168.14.22 192.168.14.23
RemainAfterExit=true
StandardOutput=journal

[Install]
WantedBy=multi-user.target
```

Also make sure that you have the contents of this repository in a directory in:

```bash
/sysadmin/strongswan/
```

