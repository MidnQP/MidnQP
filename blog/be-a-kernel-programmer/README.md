# Kernel Programming: Be a kernel hacker!
###### Updated: May 27, 2020

Kernel hackers/developers implement applications and drivers for devices. This article will pave for you the way to getting started, and highlight the steps in the process. 

## Requirements
- GNU C Compiler
- Any virtual machine, preferably `qemu`
- Strong curiosity to explore & learn

## Let's take off
As a material you need [this](https://lwn.net/Kernel/LDD3/), and as code sample you need [this](https://github.com/martinezjavier/ldd3). Honestly, this is a bit of backward compatibility. But, updated examples can be found [here](https://resources.oreilly.com/examples/9780596005900/).


**Linux Device Drivers, Third Edition**: Initially, not all the chapters are necessary to master. To kick off the curiosity, we'll read:

- Chapter 1 _Intro_: Learn more about `char`, `block` devices, `modules` (to add features to your machine) -- all of which are accessible as a `file`.

- Chapter 2 _Modules_: Running modules -- the fun part

- Chapter 5 _Concurrency and Race Conditions_: If you want to find vulnerabilities in the kernel, or develop the kernel, you'll desperately need this

- Chapter 16, 17, 18 - _Block, Network, and TTY drivers_: Know more, understandable read. If you're stuck, Google!! You can also have support from the latest kernel documentation.


![](https://raw.githubusercontent.com/midnqp/midnqp/main/blog/be-a-kernel-programmer/race_condition.png)


I believe, the curiosity will move you forward to go through the rest - just like me. Just be acknowledged that, kernel developers aren't savants, they use `if else` and `case` too. To feel more comfortable with Linux kernel, you should dig deep in yourself to gather the courage to see [this](https://github.com/torvalds/linux).
