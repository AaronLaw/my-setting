## Setup LinuxMint 19 with EFI boot in Virtualbox 6.0

2019-10-12:

"EFI" + any graphis adaptor (a.k.a display adaptor / controller) = black screen(nothing to display)
With using EFI on setup a new Linux (I use LinuxMint 19.2), there [a bug](https://bugs.archlinux.org/task/61184) in Virtualbox < 6.0.2 that showing black screen.
To solve this:
* Run VM in BIOS rather than in EFI.
* Upgrade Virtualbox > 6.0.6.

Reference: 
Google:virtualbox graphics adapter
* [vga - What are differences between VBoxVGA, VMSVGA and VBoxSVGA in VirtualBox  - Super User](https://superuser.com/questions/1403123/what-are-differences-between-vboxvga-vmsvga-and-vboxsvga-in-virtualbox)
Google:virtualbox graphics adapter EFI
* [Virtualbox 6.0.6 - VBoxSVGA with EFI Guest VMs finally fixed - General Discussion - Manjaro Linux Forum](https://forum.manjaro.org/t/virtualbox-6-0-6-vboxsvga-with-efi-guest-vms-finally-fixed/85477)
* [How to set virtualbox 6 the correct way – graphics controller – workflow   Arcolinux.com](https://arcolinux.com/how-to-set-virtualbox-6-the-correct-way-graphical-controller-workflow/)