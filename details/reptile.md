# Reptile kernel rootkit details

https://github.com/f0rb1dd3n/Reptile
  
| Feature | Description | Implementation Details |
| --- | --- | --- |
| Environment | 2.6.x/3.x/4.x (x86) | `sys_call_table` search method is x86-only |
| Persistency | /etc/modules or /etc/rc.modules | Boot-time module loading using OS-specific startup files.  |
| Management interface | `kill(2)` | `sys_call_table[__NR_kill]` |
| Altering system (library) behaviour | Hooking of system calls | `sys_call_table` patching using `CR0/WP`   |
| Hiding (tampering) of file contents | Filtering while reading | `sys_call_table[__NR_read]` |
| Hiding of files and directories | Filtering of directory entries | `sys_call_table[__NR_getdents]`  `sys_call_table[__NR_getdents64]` |
| Hiding of processes and process trees | Filtering of `/proc` | Filtering PID-like numeric entries while listing `/proc`. Hidden tasks are marked using `task->flags \| 0x10000000`. Not able to hide all threads and children of hidden (parent) process. |
| Detection evasion | Hides own components | Hide files, unlinks module from `module_list`, alters contents of startup files while reading.  |
