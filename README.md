# `awesome-linux-rootkits` [![Awesome](https://cdn.rawgit.com/sindresorhus/awesome/d7305f38d29fed78fa85652e3a63e154dd8e8829/media/badge.svg)](https://github.com/sindresorhus/awesome)

## :key: feature table

Environment:
 - CPU architecture
 - Kernel/User mode (or mixed)

Core capabilities:
 - Persistency
 - Management interface
 - Altering system (library) behavior

Stealth capabilities:
 - Detection evasion
 - System logs cleaning (filtering)

Hiding stuff capabilities:
 - Hiding of files and directories
 - Hiding (tampering) of file contents
 - Hiding of processes and process trees
 - Hiding of network connections and activity
 - Hiding of process accounting information (like CPU usage)

Additional functions:
 - Keylogger
 - Backdoor/shell
 - Gaining priveleges

## :see_no_evil: user mode rootkits

 GitHub: https://github.com/mempodippy/vlany.git

  Linux LD_PRELOAD rootkit (x86 and x86_64 architectures)

 GitHub: https://github.com/unix-thrust/beurk.git

  BEURK is an userland preload rootkit for GNU/Linux, heavily focused around anti-debugging and anti-detection.

 GitHub: https://github.com/chokepoint/azazel.git

  Azazel is a userland rootkit based off of the original LD_PRELOAD technique from Jynx rootkit.

 GitHub: https://github.com/chokepoint/Jynx2.git

  JynxKit2 is an LD_PRELOAD userland rootkit based on the original JynxKit.

 GitHub: https://github.com/chokepoint/jynxkit.git

  JynxKit is an LD_PRELOAD userland rootkit for Linux systems with reverse connection SSL backdoor

 GitHub: https://github.com/NexusBots/Umbreon-Rootkit.git

  LD_PRELOAD based

 GitHub: https://github.com/ChristianPapathanasiou/apache-rootkit.git

  A malicious Apache module with rootkit functionality

## :hear_no_evil: kernel mode rootkits

 GitHub: https://github.com/jermeyyy/rooty.git

  Academic project of Linux rootkit made for Bachelor Engineering Thesis.

 GitHub: https://github.com/trailofbits/krf.git

  A kernelspace randomized syscall faulter for Linux 4.15+

 GitHub: https://github.com/f0rb1dd3n/Reptile.git
 :zap: [details](details/reptile.md) :zap:

  Reptile is a LKM rootkit written for evil purposes that runs on Linux kernel 2.6.x/3.x/4.x

 GitHub: https://github.com/QuokkaLight/rkduck.git
 :zap: [details](details/rkduck.md) :zap:

  rkduck - Rootkit for Linux v4

 GitHub: https://github.com/croemheld/lkm-rootkit.git

  A LKM rootkit for most newer kernel versions.

 GitHub: https://github.com/mncoppola/suterusu.git

  An LKM rootkit targeting Linux 2.6.x/3.x on x86, and ARM

 GitHub: https://github.com/romeroperezabel/ARP-RootKit.git

  An open source rootkit for the Linux Kernel to develop new ways of infection/detection.

 GitHub: https://github.com/nurupo/rootkit.git

  Linux rootkit for Ubuntu 16.04 and 10.04 (Linux Kernels 4.4.0 and 2.6.32), both i386 and amd64

 GitHub: https://github.com/m0nad/Diamorphine.git

  LKM rootkit for Linux Kernels 2.6.x/3.x/4.x/5.x (x86 and x86_64)

 GitHub: https://github.com/ivyl/rootkit.git

  Sample Rootkit for Linux

 GitHub: https://github.com/deb0ch/toorkit.git

  A simple useless rootkit for the linux kernel

 GitHub: https://github.com/vrasneur/randkit.git

  Random number rootkit for the Linux kernel

 GitHub: https://github.com/Eterna1/puszek-rootkit.git

  Yet another LKM rootkit for Linux. It hooks syscall table.

 GitHub: https://github.com/trimpsyw/adore-ng.git

  linux rootkit adapted for 2.6 and 3.x

 GitHub: https://github.com/bones-codes/the_colonel.git

  An experimental linux kernel module (rootkit) with a keylogger and built-in IRC bot

 GitHub: https://github.com/David-Reguera-Garcia-Dreg/enyelkm.git

  LKM rootkit for Linux x86 with the 2.6 kernel. It inserts salts inside system_call and sysenter_entry.

 GitHub: https://github.com/falk3n/subversive.git

  x86_64 linux rootkit using debug registers

 GitHub: https://github.com/jiayy/lkm-rootkit.git

  An lkm rootkit support x86/64,arm,mips

 GitHub: https://github.com/a7vinx/liinux.git

  A linux rootkit works on kernel 4.0.X or higher

 GitHub: https://github.com/hanj4096/wukong.git

  Wukong: a LKM rootkit for Linux kernel 2.6.x, 3.x and 4.x

 GitHub: https://github.com/varshapaidi/Kernel_Rootkit.git

  Linux Kernel Rootkit - To hide modules and ssh service

 GitHub: https://github.com/kacheo/KernelRootkit.git

  Linux kernel rootkit to hide certain files and processes.

 GitHub: https://github.com/dsmatter/brootus.git

  bROOTus is a Linux kernel rootkit that comes as a single LKM (Loadable Kernel Module) and it is totally restricted to kernel 2.6.32.

 GitHub: https://github.com/jarun/keysniffer.git

  A Linux kernel module to grab keys pressed in the keyboard.

 GitHub: https://github.com/PinkP4nther/Sutekh.git

  An example rootkit that gives a userland process root permissions (x86, 4.x)

 GitHub: https://github.com/En14c/LilyOfTheValley.git

  LilyOfTheValley is a simple LKM linux kernel rootkit for v4.x that works on (x86 and x86_64)

 GitHub: https://github.com/NoviceLive/research-rootkit.git

  This is LibZeroEvil & the Research Rootkit project, in which there are step-by-step, experiment-based courses that help to get you started and keep your hands dirty with offensive or defensive development in the Linux kernel (LibZeroEvil).

 GitHub: https://github.com/NinnOgTonic/Out-of-Sight-Out-of-Mind-Rootkit.git
 :zap: [writeup](https://github.com/NinnOgTonic/Out-of-Sight-Out-of-Mind-Rootkit/blob/master/osom.pdf) :zap:

  Out of Sight, Out of Mind is a study and implementation of Linux rootkit methods. In addition a new covert network channel using additional Domain Name System (DNS) is implemented.

 GitHub: https://github.com/h3xduck/Umbra.git
 
  An experimental LKM rootkit for v4.x/5.x kernels which opens a backdoor that can be used to get a reverse shell remotely.

 GitHub: https://github.com/kris-nova/boopkit.git

  Linux backdoor, rootkit, and eBPF bypass tools. Remote command execution over raw TCP.

 GitHub: https://github.com/milabs/kopycat.git

  KOPYCAT - Linux Kernel module-less implant (backdoor).

 GitHub: https://github.com/h3xduck/TripleCross.git

  A Linux eBPF rootkit with a backdoor, C2, library injection, execution hijacking, persistence and stealth capabilities.

 GitHub: https://github.com/carloslack/KoviD.git

  KoviD - Linux 4.18+ rootkit with multiple reverse backdoors, hidden tasks management, CPU usage hiding, stealth techniques, ELF infection, evasion from anti-rooktiks based on eBPF and others, Kaudit evasion and more.

 GitHub: https://github.com/reveng007/reveng_rtkit.git

  Linux Loadable Kernel Module (LKM) based rootkit capable of hiding itself, processes/implants, rmmod proof, has ability to bypass infamous rkhunter antirootkit.

## :speak_no_evil: related stuff

 GitHub: https://github.com/landhb/DrawBridge.git

  A layer 4 Single Packet Authentication (SPA) Module, used to conceal TCP ports on public facing machines and add an extra layer of security.

 GitHub: https://github.com/gianlucaborello/libprocesshider.git

  Hide a process under Linux using the ld preloader

 GitHub: https://github.com/spiderpig1297/kprochide.git

  LKM for hiding processes from the userland. The module is able to hide multiple processes and is able to dynamically receive new processes to hide.

 GitHub: https://github.com/spiderpig1297/kfile-over-icmp.git

  kfile-over-icmp is a loadable kernel module for stealth sending of files over ICMP communication.

 GitHub: https://github.com/spiderpig1297/kunkillable.git

  LKM (loadable kernel module) that makes userland processes unkillable.

  https://web.archive.org/web/20140701183221/https://www.thc.org/papers/LKM_HACKING.html

  Heroin, an LKM based rootkit, and many more LKM based rootkit techniques (it's backdated, but posses powerful knowledge).

## Helper script

  Try `./cloneall.sh` to fetch all rootkits in the above list in one go.
  Rootkits are saved in `rootkits` directory.

## Contributing

[Please refer the guidelines at contributing.md for details](CONTRIBUTING.md)
