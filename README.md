## covertinator - simple converter script.

#### Introduction

Ever find your self fiddling around with Google in order to convert something? Why should we do this?! We have perfectly capable computers in front of us, and so I started making this script to use the computer in front of me instead of asking another down a copper (or optic) cable.

Also I wanted to learn a bit about Perl.

#### Features

 - Convert Distances:
    - Metric.
    - Imperial.
 - Convert Temperatures:
    - Kelvin.
    - Celsius.
    - Farhrenheit
 - Convert Data Sizes:
    - Bytes (B, kB, mB, gB, tB, pB).
    - Bits (b, Kb, Mb, Gb, Tb, Pb).

#### Plans

I want to pack as much math into this script as possible and maybe have sister script written in bash.

Currently planned conversions:

 - Time conversions, e.g minutes, hours etc.
 - Energy units.
 - Areas.
 - Circles (radius, diameter, circumference etc.).

#### Installation

##### Perl check

To install this script you must have Perl, if you are running a unix or unix-like system them you most probably have it installed as it was used in creating many features right at the dawn of the *nix s. Otherwise it's simple to install.

To check if you have it, open your terminal and type in:

`perl -v`

If you get something like:

>daniel@Oxygen:~$ perl -v
>
>This is perl 5, version 20, subversion 2 (v5.20.2) built for x86_64-linux-gnu-thread-multi
>(with 51 registered patches, see perl -V for more detail)
>
>Copyright 1987-2015, Larry Wall

then you have it :D

##### Directories

* Directory 'A' - for a system wide install is `/bin/` or `/usr/bin/`.

* Directory 'B' - for a user only install is `/home/$URusername/bin/` or `~/bin/`. Note you may have to make this directory.

##### Installation

1. Navigate to your chosen directory, if your `~/bin/` doesn't exist, make it with this command. `mkdir ~/bin`.

2. Download the script from this Repo. You can use the following to download it in your terminal:

 `wget https://raw.githubusercontent.com/JetLaggedEgg/convertinator/master/conv.pl`

3. Correct its permissions using `sudo chmod 755 conv.pl`.

4. Call it using `conv.pl` anywhere in the terminal.

5. Profit.
