#!/usr/bin/env bash

sudo cat /var/log/nginx/access.log | alp ltsv -r -m "/new_items/.*.json,/items/.*.json,/users.*.json,/transactions/.*.png,/upload/.*.jpg,/static/(js|css)"
