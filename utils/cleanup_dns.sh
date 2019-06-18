#!/bin/sh

# Flush directory service cache
dscacheutil -flushcache && killall -HUP mDNSResponder
