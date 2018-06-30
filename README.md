# `awesome-linux-rootkits`

## :key: feature table

- Operational environment (`OE-*`)
- Hiding of files and directories (`HIDE-fs-*`)
- Hiding of processes and process trees (`HIDE-proc-*`)
- Hiding of network connections and activity (`HIDE-net-*`)
- Keylogger (`X-keylogger`)
- Backdoor (`X-backdoor`)

## :see_no_evil: user mode rootkits :shit: 

- https://github.com/mempodippy/vlany

  Linux LD_PRELOAD rootkit (x86 and x86_64 architectures)
  
  :point_up: `OE-user`

## :hear_no_evil: kernel mode rootkits :heart:

- https://github.com/f0rb1dd3n/Reptile

  Reptile is a LKM rootkit written for evil purposes that runs on Linux kernel 2.6.x/3.x/4.x

  :point_up: `OE-kernel` `HIDE-fs-{getdents,getdents64}` `X-backdoor`

- https://github.com/QuokkaLight/rkduck

  rkduck - Rootkit for Linux v4
  
  :point_up: `OE-kernel` `X-keylogger` `HIDE-fs-{filldir}` `X-backdoor`

