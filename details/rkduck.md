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

## Altering system behaviour

Hooking of system calls by patching syscall-handlers in `sys_call_table[]`:
 - hook `sys_call_table[__NR_write]` (disabled)
   - https://github.com/linux-rootkits/rkduck/blob/master/rkduck/duck.c#L17
 - hook `file->f_op->iterate` for `/` and `/proc` dentries
   - https://github.com/linux-rootkits/rkduck/blob/master/rkduck/duck.c#L25
   - https://github.com/linux-rootkits/rkduck/blob/master/rkduck/duck.c#L29
 - netfilter `NF_INET_PRE_ROUTING/NF_IP_PRI_FIRST` hook used for catching `ICMP` packets
   - https://github.com/linux-rootkits/rkduck/blob/master/rkduck/backdoor.c#L454
   - https://github.com/linux-rootkits/rkduck/blob/master/rkduck/backdoor.c#L379
 
 ## Hiding of files and directories
 
 Filtering of directory entries:
  - https://github.com/linux-rootkits/rkduck/blob/master/rkduck/vfs.c#L323 (vfs_hide_file)
  - https://github.com/linux-rootkits/rkduck/blob/master/rkduck/vfs.c#L346 (vfs_unhide_file)
  - https://github.com/linux-rootkits/rkduck/blob/master/rkduck/vfs.c#L97 (vfs_hijacked_iterate)
    - https://github.com/linux-rootkits/rkduck/blob/master/rkduck/vfs.c#L59 (vfs_hijacked_filldir)
  - https://github.com/linux-rootkits/rkduck/blob/master/rkduck/vfs.c#L157 (vfs_hijacked_proc_iterate)
    - https://github.com/linux-rootkits/rkduck/blob/master/rkduck/vfs.c#L78 (vfs_hijacked_proc_filldir)

## Hiding of processes and process trees

Filtering PID-like numeric entries while listing `/proc`:
 - based on hiding of files capabilty (vfs_hide_file)
   - https://github.com/linux-rootkits/rkduck/blob/master/rkduck/crumbs_serv.c#L30

## Keylogger

Keylogger is implemented using `register_keyboard_notifier()`:
 - https://github.com/linux-rootkits/rkduck/blob/master/rkduck/keylogger.c#L204
 - https://github.com/linux-rootkits/rkduck/blob/master/rkduck/keylogger.c#L72 (keylogger_notify)

Logged keystrokes are saved in file which periodically being sent to remote hos using `scp`:
 - https://github.com/linux-rootkits/rkduck/blob/master/rkduck/keylogger.c#L181 (keylogger_init)
 - https://github.com/linux-rootkits/rkduck/blob/master/rkduck/keylogger.c#L64 (writing to the file...)
 - https://github.com/linux-rootkits/rkduck/blob/master/rkduck/keylogger.c#L32 (sending with `scp`)
 
 ## Backdoor
 
 ...
