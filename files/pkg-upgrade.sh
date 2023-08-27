#!/bin/sh
PATH="/bin:/usr/bin:/sbin:/usr/sbin:/usr/local/bin:/usr/local/sbin"
RAND=$(jot -r 1 900)
ENV="BATCH=yes IGNORE_OSVERSION=yes"
sleep ${RAND}
env ${ENV} pkg update -q -f && \
env ${ENV} pkg upgrade -q -U -y --fetch-only && \
env ${ENV} HANDLE_RC_SCRIPTS=yes pkg upgrade -q -U -y