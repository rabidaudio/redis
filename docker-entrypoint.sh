#!/bin/sh

if [ -z "${LINK_PASSWORD}" ]
then
  echo "protected-mode no" >> /tmp/redis.conf
else
  echo "requirepass ${LINK_PASSWORD}" >> /tmp/redis.conf
fi

exec gosu nobody "$@"
