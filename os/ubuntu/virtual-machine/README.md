# Make and Ubuntu Virtual Machine

**Please ensure you read notes at bottom.**

Virtual Machines are super handy. Whether to test a different OS, isolate an environment, or be able to share a workspace with a client or colleague, I think it's awesome tool to have in your arsenal.

Generally I would recommend VMWare but there's no homebrew package, so I use Virtualbox on Linux/OSX.

| OS | VM App |
|---|---|
| Windows | [VMWare Workstation Player](https://my.vmware.com/en/web/vmware/free#desktop_end_user_computing/vmware_workstation_player/12_0) |
| Linux/OSX | [Virtualbox](../mac/setting-up/README.md) |

The process for creating the machine is pretty straight forward.

1. Download an ISO of your VM OS eg: [Ubuntu](https://www.ubuntu.com/download/alternative-downloads)
1. Open your virtualisation software - VMWare or Virtualbox.
1. Generally I usually set up the following:
    - Ram about 50% of the host machine.
    - CPU about 50% of the host machine.
    - CPU cores, 2 if a 64 bit ISO, 1 if 32 bit.
    - 10 gigs for the virtual hard drive.
1. Follow the remaining prompts and select your downloaded ISO.

if you cant get internet from your host machine you may need to change the network settings of VMWare or Vbox between NAT or  bridged mode.

## Note

Vm's corrupt easily.

Don't let your machine sleep or hibernate or power down without shutting down the VM. I've corrupted about three VM's on both Windows and Mac, with VMWare and Virtualbox respectively, by allowing the host PC to sleep. I've been working with Vm's for around 3 years in a commercial environment and these have been the only major issues I've had with VM's.

I would also recommend always running the host machine from a fresh boot. A few times I had non-fatal issues with Windows and VMWare not booting the VM properly, which was normally resolved by rebooting.
