#
# Cookbook:: daosdev
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
include_recipe "daosdev::proxy"
include_recipe "yum-epel"

package ['autoconf',
        'automake',
        'flex',
        'm4',
        'libtool',
        'patch',
        'scons',
        'cmake',
        'doxygen',
        'gcc-c++',
        'boost-devel',
        'libevent-devel',
        'libtool-ltdl-devel',
        'libuuid-devel',
        'openssl-devel',
        'libcmocka',
        'libcmocka-devel',
        'pandoc',
        'git',
        'librdmacm-devel'
]

# For Golang
package ['golang',
        'pcre-devel',
        'glibc-static',
        'which']
