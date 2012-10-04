#!/bin/bash

export PATH=/app/bin:$PATH

echo "setting up ~/.ssh"

mkdir -p $HOME/.ssh

cat >$HOME/.ssh/config <<EOF
StrictHostKeyChecking no
EOF

[ -n "$SSH_PRIVATE_KEY" ] && echo "$SSH_PRIVATE_KEY" >$HOME/.ssh/id_rsa
[ -n "$SSH_PUBLIC_KEY" ]  && echo "$SSH_PUBLIC_KEY"  >$HOME/.ssh/id_rsa.pub
