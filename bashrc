CEPH=$HOME/ceph-install
export PYTHONPATH=$CEPH/lib/python2.7/site-packages:$PYTHONPATH
export LD_LIBRARY_PATH=$CEPH/lib:$LD_LIBRARY_PATH
export PATH=$CEPH/bin:$CEPH/sbin:$PATH
export CEPH_CONF=$HOME/ceph-deploy/ceph.conf
