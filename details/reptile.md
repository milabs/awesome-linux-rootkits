# Reptile rootkit details

https://github.com/f0rb1dd3n/Reptile

 - not able to tamper file contents while reading byte-by-byte (:exclamation:)
 - not able to hide all threads and children of hidden (parent) process (:exclamation:)

## Environment

- x86, x86_64
- Linux kernel 2.6.x/3.x/4.x

## Persistency

Boot-time module loading using OS-specific startup files:
 - /etc/modules (debian/ubuntu)
   - https://github.com/linux-rootkits/Reptile/blob/master/setup.sh#L296
 - /etc/rc.modules (redhat/centos/fedora)
   - https://github.com/linux-rootkits/Reptile/blob/master/setup.sh#L298

## Detection evasion

Rootkit is trying to evade from detection by:
 - hiding files by name
   - https://github.com/linux-rootkits/Reptile/blob/master/rep_mod.c#L575
   - https://github.com/linux-rootkits/Reptile/blob/master/rep_mod.c#L619
 - tampering contents of startup files while reading
   - https://github.com/linux-rootkits/Reptile/blob/master/rep_mod.c#L638
 - hiding kernel module by unlinking from `modules`-list
   - https://github.com/linux-rootkits/Reptile/blob/master/rep_mod.c#L145
   - https://github.com/linux-rootkits/Reptile/blob/master/rep_mod.c#L157

## Management interface

Implemented via `kill(2)` by hooking `sys_call_table[__NR_kill]`:
 - https://github.com/linux-rootkits/Reptile/blob/master/rep_mod.c#L509
 
 Supported commands are:
 - hiding/unhiding processes
   - https://github.com/linux-rootkits/Reptile/blob/master/rep_mod.c#L518
 - hiding/unhiding rootkit's module
   - https://github.com/linux-rootkits/Reptile/blob/master/rep_mod.c#L514
 - enabling/disabling of tampering file content function
   - https://github.com/linux-rootkits/Reptile/blob/master/rep_mod.c#L524
 - gaining root priveleges to calling process
   - https://github.com/linux-rootkits/Reptile/blob/master/rep_mod.c#L528

## Altering system behaviour

Hooking of system calls by patching syscall-handlers in `sys_call_table[]`:
 - to write to read-only page `CR0/WP` technique used (x86-only)
   - https://github.com/linux-rootkits/Reptile/blob/master/rep_mod.c#L681
 - netfilter hook (`NF_IP_PRI_FIRST`)
   - https://github.com/linux-rootkits/Reptile/blob/master/rep_mod.c#L356
   - https://github.com/linux-rootkits/Reptile/blob/master/rep_mod.c#L687

## Hiding (tampering) of file contents

Filtering of file content while reading:
 - hook `sys_call_table[__NR_read]`
   - https://github.com/linux-rootkits/Reptile/blob/master/rep_mod.c#L282
   - https://github.com/linux-rootkits/Reptile/blob/master/rep_mod.c#L638

## Hiding of files and directories

Filtering of directory entries:
 - hook `sys_call_table[__NR_getdents]`
   - https://github.com/linux-rootkits/Reptile/blob/master/rep_mod.c#L594
 - hook `sys_call_table[__NR_getdents64]`
   - https://github.com/linux-rootkits/Reptile/blob/master/rep_mod.c#L550

## Hiding of processes and process trees

Filtering PID-like numeric entries while listing `/proc`:
 - getdents/getdents64 hook used
   - https://github.com/linux-rootkits/Reptile/blob/master/rep_mod.c#L619
 - hidden tasks are marked using `task->flags` (bit `0x10000000`)
   - https://github.com/linux-rootkits/Reptile/blob/master/rep_mod.c#L189

## Backdoor/shell

Reverse shell spawning by port-knocking-like technique:
 - magic packet with token used (`ICMP/UDP/TCP`)
   - https://github.com/linux-rootkits/Reptile/blob/master/rep_mod.c#L356
 - spawning root-shell connection to remote host
   - https://github.com/linux-rootkits/Reptile/blob/master/rep_mod.c#L328
   - https://github.com/linux-rootkits/Reptile/blob/master/rep_mod.c#L210
