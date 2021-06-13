# TTesseract's dotfiles

## What are dotfiles?

Dotfiles are the customisation files that are used to personalize your Linux or other Unix-based systems. Their name always begins with a _dot_! That period at the beginning of a filename or directory indicates that it is 'hidden' from normal file browsing modes. This repository contains my personal dotfiles. They are stored here for convenience, so that I can quickly acces them and deploy them on a new machine. Others like you may also find them helpful inspiration for their own dotfiles.

## How is this repository structured?

Since there are many different systems/window managers/desktop environments that I intend to use, and that those config files I use in those different scenarions might not always be compatible with each other (e.g.: using another default terminal in xfce than in dwm), I decided to branch of this repository based on the system I use those files with. I'm still not sure this approach will work, afterall most dotfiles I see around on github use a single MASTER branch, but I'll give it a shot.

As such you might eventually find a branch that has the specific dotfiles for my kubuntu system, or my xubuntu system, or maybe specific to Arch-i3 or manjaro-dwm. To be fair, usually the distribution itself has very minimal impact on the content of my dotfiles. A lot less than the Window Manager. Tough there might be a few aliases I use related to package installation that might be different from one distribution to the other.

I already expect some files to be common on all my installations, like this README file, or a few fonts I use for graphical design in inkscape, or my backgrounds,... Those will be committed to this branch, the COMMON branch. I renamed it that way instead of MASTER (even though I like the name MASTER and was not at all keen on the suggestion to move away from this name as a default name) because I thought that in this case, it would make more sence.

Occationnally there might also be a branch specific to one of the servers I have setup on my proxmox host. There are some settings from those that I might want to archive here as well, like apache or nginx configs, etc. Though for security reasons this might never happen, or those might be encrypted with my repository protection tool: 

[obfuscating-commit.sh](https://gist.github.com/CodeArtha/dc17cfcb5c9fb0b0794e15d1fd0514d2)
[deobfuscating-pull.sh](https://gist.github.com/CodeArtha/a77caaff4bd6d054acf6265c163e2cdb)

## How I manage these dotfiles?

Up to a few days ago, I had a private git repository that I called "dotfiles" though it wasn't really. It was a directory in which I kept useful scripts for my system administration, little snippets of code like: 

>> Easiest way to sync clocks between windows and linux on dualboot systems: ```timedatectl set-local-rtc 1 --adjust-system-clock```

I had also much larger files in that repository that logged in detail every step I took, every command I used, to configure my servers. Sometimes even with additionnal explanation of the reason I did it, did it solved a bug,... All in the hope to have a clear, step by step instruction book to do a fresh reinstall of one of those servers if I ever messed up their config or had a hardware failure.

However that was far from a dotfiles repo because one cannot just download the file on its system and expect it to work or do anything. I still have that repository, but decided it was time to create a real dotfile repository.

To manage it, I will use a tool that really seem fantastic, suckless in its approach as its just a few bash scripts, but that is soo powerful. I am of course talking about [rcm - by thoughtbot](https://github.com/thoughtbot/rcm). This little script moves your dotfile to a directory (that can also be a git repo) and then creates a symlink to it.
