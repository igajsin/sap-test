# The SAP test
There is the coding challenge for a DevOps position. The detailed description
is presented in the doc/Task.md.

# Prerequisites
The installation and configuration of the Puppet are out of the scope for this
task. I assume that it's done or the module is used in the masterless way.

# Usage
Clone this repository and put the module sap_test to any place according to
your MODULEPATH value. There is the site.pp for the test reason. You can use it
like:
~~~bash
sudo puppet apply --modulepath=modules manifests/site.pp
~~~

The usage of sudo is important in case you need to install a package.

# Comments
The script.sh would be better to rewrite from bash+awk to python+psutil.
