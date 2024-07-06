#!/bin/bash
chown -R 1000:1000 "/Users/Shared/daytona/"
chown 1000 /var/run/docker.sock
sudo -u daytona -i daytona serve > /tmp/serve.out 2> /tmp/serve.log &
