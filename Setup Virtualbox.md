# Running Linux in VirtualBox

There are some tricks on running Linux in VirtualBox, especially graphics adaptor and system performance.



## Setup Linux Mint 19 with EFI boot in VirtualBox 6.0

2019-10-12:

"EFI" + any graphics adaptor (a.k.a display adaptor / controller) = black screen(nothing to display)
With using EFI on setup a new Linux (I use Linux Mint 19.2), there [a bug](https://bugs.archlinux.org/task/61184) in VirtualBox < 6.0.2 that showing black screen.[^1]

To solve this:

* Run VM in BIOS rather than in EFI.
* Upgrade VirtualBox > 6.0.6.
* 'Display': set to ~~`VMSVGA`~~ `VBoxSVGA` (even if there was an `Invalid settings detected` error.)



## For Performance

For Intel CPU: Remember to enable `VT-x` for virtualization.

For AMD CPU: Remember to enable `SVM` for virtualization & `STM` for Simultaneous multithreading.[^2]

## Reference: 

[^1]: Google:virtualbox graphics adapter
* [vga - What are differences between VBoxVGA, VMSVGA and VBoxSVGA in VirtualBox  - Super User](https://superuser.com/questions/1403123/what-are-differences-between-vboxvga-vmsvga-and-vboxsvga-in-virtualbox)
  Google:virtualbox graphics adapter EFI
* [Virtualbox 6.0.6 - VBoxSVGA with EFI Guest VMs finally fixed - General Discussion - Manjaro Linux Forum](https://forum.manjaro.org/t/virtualbox-6-0-6-vboxsvga-with-efi-guest-vms-finally-fixed/85477)
* [How to set virtualbox 6 the correct way – graphics controller – workflow   Arcolinux.com

[^2]: [[扫盲操作系统虚拟机[6\]：如何优化运行速度？ @ 编程随想的博客 (program-think.blogspot.com)](https://program-think.blogspot.com/2014/09/system-vm-6.html)](https://arcolinux.com/how-to-set-virtualbox-6-the-correct-way-graphical-controller-workflow/)