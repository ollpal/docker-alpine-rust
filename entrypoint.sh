#!/bin/bash

if [ -z "$USER_ID" ]; then
    echo "USER_ID not set, running as root"
    exec "$@";
fi

if [ -z "$GROUP_ID" ]; then
    echo "GROUP_ID not set, running as root"
    exec "$@";
fi

echo "Starting as $USER_ID:$GROUP_ID"

groupadd --gid $GROUP_ID group
useradd --shell /bin/bash --uid $USER_ID --gid $GROUP_ID --non-unique --create-home user

chown -R user:group $HOME

exec /usr/local/bin/gosu user "$@"
