#!/usr/bin/env bash

export DBUS_SESSION_BUS_ADDRESS=`dbus-daemon --fork --session --print-address`
export DBUS_SYSTEM_BUS_ADDRESS=`dbus-daemon --fork --system --print-address`

exec bash