#!/usr/bin/env bash
# Reference: https://www.opentlc.com/labs/ocp_advanced_deployment/02_1_HA_Deployment_Solution_Lab.html#_create_pvs_for_users

mkdir -p /srv/nfs/user-vols/pv{1..200}

echo "Create directories at the NFS server to be used as PVs in the OpenShift cluster.."

for pvnum in {1..50} ; do
  echo '/srv/nfs/user-vols/pv${pvnum} *(rw,root_squash)' >> /etc/exports.d/openshift-uservols.exports
  chown -R nfsnobody.nfsnobody /srv/nfs
  chmod -R 777 /srv/nfs
done