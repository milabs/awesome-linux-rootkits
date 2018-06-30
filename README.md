# `awesome-linux-rootkits`

## :key: feature table

Environment:
 - CPU architecture
 - Kernel/User mode (or mixed)

Core capabilities:
 - Persistency
 - Management interface
 
Stealth capabilities:
 - Detection evasion
 - System logs cleaning (filtering) 

Hiding stuff capabilities:
 - Hiding of files and directories
 - Hiding of processes and process trees
 - Hiding of network connections and activity
 - Hiding of process accounting information (like CPU usage)

Additional functions:
 - Keylogger
 - Backdoor/shell

## :see_no_evil: user mode rootkits

- https://github.com/mempodippy/vlany

  Linux LD_PRELOAD rootkit (x86 and x86_64 architectures)

- https://github.com/unix-thrust/beurk

  BEURK is an userland preload rootkit for GNU/Linux, heavily focused around anti-debugging and anti-detection.

- https://github.com/chokepoint/azazel

  Azazel is a userland rootkit based off of the original LD_PRELOAD technique from Jynx rootkit.

- https://github.com/chokepoint/Jynx2

  JynxKit2 is an LD_PRELOAD userland rootkit based on the original JynxKit.
  
- https://github.com/NexusBots/Umbreon-Rootkit

  LD_PRELOAD based

## :hear_no_evil: kernel mode rootkits

- https://github.com/f0rb1dd3n/Reptile

  Reptile is a LKM rootkit written for evil purposes that runs on Linux kernel 2.6.x/3.x/4.x
  
- https://github.com/QuokkaLight/rkduck

  rkduck - Rootkit for Linux v4

- https://github.com/mncoppola/suterusu

  An LKM rootkit targeting Linux 2.6.x/3.x on x86, and ARM
  
- https://github.com/nurupo/rootkit

  Linux rootkit for Ubuntu 16.04 and 10.04 (Linux Kernels 4.4.0 and 2.6.32), both i386 and amd64

- https://github.com/m0nad/Diamorphine :shit: 

  LKM rootkit for Linux Kernels 2.6.x/3.x/4.x (x86 and x86_64)
  
- https://github.com/ivyl/rootkit :shit:

  Sample Rootkit for Linux
  
- https://github.com/Eterna1/puszek-rootkit

  Yet another LKM rootkit for Linux. It hooks syscall table.

- https://github.com/trimpsyw/adore-ng

  linux rootkit adapted for 2.6 and 3.x
  
- https://github.com/bones-codes/the_colonel

  An experimental linux kernel module (rootkit) with a keylogger and built-in IRC bot

- https://github.com/David-Reguera-Garcia-Dreg/enyelkm

  LKM rootkit for Linux x86 with the 2.6 kernel. It inserts salts inside system_call and sysenter_entry.

- https://github.com/falk3n/subversive

  x86_64 linux rootkit using debug registers

- https://github.com/jiayy/lkm-rootkit

  An lkm rootkit support x86/64,arm,mips
