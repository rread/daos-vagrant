# Vagrant setup for DAOS

This creates a clean CentOS 7.x environment for DAOS using VirtualBox and Vagrant. First install those,
 and then:

        vagrant up
        vagrant ssh

And you'll be logged in to the new CentOS machine ready to build DAOS.

This is using Chef to manage the dependencies. If new packages need to be added, you can edit the list of packages in cookboos/daosdev/recipes/default.rb  and then rerun chef using:

        vagrant provision

        
