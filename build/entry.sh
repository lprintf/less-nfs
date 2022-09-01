#!/bin/sh

rpcbind &&
exportfs -rv &&
rpc.mountd &&
rpc.nfsd --no-nfs-version 2 --no-nfs-version 3 &&
ifconfig &&
/bin/sh
