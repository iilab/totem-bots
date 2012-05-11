#!/bin/ksh

basedir=$(realpath "${0%/*}/..")
alias gpg='gpg --keyring $basedir/keys/keyring.pub --no-default-keyring --secret-keyring $basedir/keys/keyring.sec'
(echo "Achievement unlocked: $1";date -u) | gpg --clearsign --armor --default-key pc@ctrlc.hu 2>/dev/null
