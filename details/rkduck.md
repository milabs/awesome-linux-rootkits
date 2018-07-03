# rkduck rootkit details

https://github.com/QuokkaLight/rkduck

## Environment

- x86, x86_64
- Linux kernel 4.x
- Debian/Ubuntu, RHEL/CentOS/Fedora

## Persistency

Boot-time module loading using OS-specific startup files:
 - /etc/modules (debian/ubuntu)
   - https://github.com/linux-rootkits/rkduck/blob/master/forever.sh#L29
 - /etc/rc.modules (redhat/centos/fedora)
   - https://github.com/linux-rootkits/rkduck/blob/master/forever.sh#L32

Rootkit module runs `forever.sh` helper script at the moment of module unloading:
 - https://github.com/linux-rootkits/rkduck/blob/master/rkduck/duck.c#L47

## Detection evasion

Rootkit is trying to evade from detection by:
 - hiding rootkit files by name

## Management interface

Implemented via in-kernel `netlink` server (`NETLINK_USER`) :
 - https://github.com/linux-rootkits/rkduck/blob/master/rkduck/crumbs_serv.c#L142

Supported commands are:
 - hiding/unhiding files
   - https://github.com/linux-rootkits/rkduck/blob/master/rkduck/crumbs_serv.c#L22
 - hiding/unhiding processes
   - https://github.com/linux-rootkits/rkduck/blob/master/rkduck/crumbs_serv.c#L32

...
