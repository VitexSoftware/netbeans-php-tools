#!/bin/bash
cd /tmp
wget https://builds.apache.org/view/Incubator%20Projects/job/incubator-netbeans-release/lastSuccessfulBuild/artifact/dist/incubating-netbeans-java--bin.zip
unzip incubating-netbeans-java--bin.zip
sudo rm -rf  /usr/local/netbeans-incubating
sudo mv netbeans /usr/local/netbeans-incubating
rm incubating-netbeans-java--bin.zip
#run /usr/local/netbeans-incubating/bin/netbeans
