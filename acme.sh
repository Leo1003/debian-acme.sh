#!/usr/bin/bash
. /etc/default/acme.sh
if [ `id -u` -eq 0 ]; then
    export LE_CONFIG_HOME=/etc/acme.sh
else
    export LE_CONFIG_HOME="$HOME/.acme.sh"
fi
export LE_WORKING_DIR=/usr/local/share/acme.sh
unset SUDO_USER
unset SUDO_UID
unset SUDO_COMMAND
unset SUDO_GID

exec /usr/local/share/acme.sh/acme.sh "$@"
