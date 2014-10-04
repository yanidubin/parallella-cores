parallella-cores
================

System description files for FuseSoC, specific to the Parallella.

I have created this repository to use as an alternative to orpsoc-cores,
for the meanwhile until we work out how far we want to go with this.

All Verilog files are from https://github.com/parallella/parallella-hw,
I just haven't worked through fetching them from there yet.

Currently, there is no usage of any existing cores, and so the fact that
FuseSOC only has one cores_root is not a problem.

At present, this will only work with my fork of fusesoc, available at
https://github.com/yanidubin/fusesoc.

Follow the Quick Start instructions for the Install step from that repo
to compile and initialise fusesoc.

Either by entering a repo path when prompted, or by subsequently editing
~/.config/fusesoc/fusesoc.conf, point to the parallella-cores repo.

You should now be able to build the parallella target.
