# Puppet module:

Please create puppet module(class) which will do  following:

1. Will create empty directory /tmp/test
2. If input parameters  “package_version” and “package” have value will install
   package “package” with version “package_version”. If any of them is empty
   will not install anything
3. Will create file /tmp/test/system with text “My ip is” followed by IP
   address of system (from facter - use factor -p to list factors)
4. Will copy file script.sh from ${module_name}/files/script.sh
   to /tmp/test/script.sh on system where is  puppet executed
5. After script.sh is created it will be executed.

# Bash

create bash script scripts.sh

Make it as readable as possible (use functions if necessary). It will list all
processes in system, and all with pid lower than 1000 will be printed to
/tmp/test/process.

Print application name, pid and uid/username (in this order)
