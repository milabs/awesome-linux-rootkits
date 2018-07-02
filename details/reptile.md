# Reptile kernel rootkit details

https://github.com/f0rb1dd3n/Reptile

## Environment

- Linux kernel 2.6.x/3.x/4.x
- x86 (`sys_call_table` search method is x86-only)

## Persistency

Boot-time module loading using OS-specific startup files:
 - /etc/modules (debian/ubuntu)
 - /etc/rc.modules (redhat/centos/fedora)

## Detection evasion

Rootkit is trying to evade from detection by:
 - hiding files by name
 - tampering contents of startup files while reading
 - hiding kernel module by unlinking from `module_list`

## Management interface

Implemented via `kill(2)` by hooking `sys_call_table[__NR_kill]` entry. Supported commands are:
 - hiding/unhiding processes
 - hiding/unhiding rootkit's module
 - enabling/disabling of tampering file content function
 - gaining root priveleges to calling process

## Altering system behaviour

Hooking of system calls by patching syscall-handlers in `sys_call_table[]`:
 - to write to read-only page `CR0/WP` technique used (x86-only)
 - netfilter hook (`NF_IP_PRI_FIRST`)

## Hiding (tampering) of file contents

Filtering of file content while reading by hooking:
 - `sys_call_table[__NR_read]`

## Hiding of files and directories

Filtering of directory entries by hoocking:
 - `sys_call_table[__NR_getdents]`
 - `sys_call_table[__NR_getdents64]`

## Hiding of processes and process trees

Filtering PID-like numeric entries while listing `/proc`:
 - getdents/getdents64 hook used
 - hidden tasks are marked using `task->flags` (bit `0x10000000`)

# Backdoor/shell

Reverse shell spawning by port-knocking-like technique:
 - `ICMP/UDP/TCP` port-knocking
 - spawning root-shell connection to remote host
 
--

:exclamation: Not able to tamper file contents while reading byte-by-byte.
:exclamation: Not able to hide all threads and children of hidden (parent) process.
