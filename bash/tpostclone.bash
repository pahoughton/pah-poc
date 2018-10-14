set -x
prj_topdir=../..
bname=fedora19keys
dname=tfedora19
id_rsa=$prj_topdir/components/puppet/modules/vdomain/files/fedora19_root_rsa

dip=`arp -an | grep \`virsh domiflist $dname | grep rtl8139 | awk '{print $5}'\` | sed 's/.*(\(.*\)).*/\1/'`
echo $dip
if [ -z "$dip" ] ; then
  echo "no domain ip value :("
  exit 2
fi

scp -i $id_rsa tfedora19keys.setup.remote.bash root@$dip: || exit 2
ssh -i $id_rsa root@$dip bash tfedora19keys.setup.remote.bash || exit 2
