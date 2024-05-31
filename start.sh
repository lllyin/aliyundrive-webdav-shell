#!/bin/bash

aliyundrive-webdav --host 0.0.0.0 --port 6689 --auth-user $USERNAME --auth-password $PASSWORD \
--refresh-token $REFRESH_TOKEN \
--drive-type resource
