dname=tfedora19
dip=`arp -an | grep \`virsh domiflist $dname | grep rtl8139 | awk '{print $5}'\` | sed 's/.*(\(.*\)).*/\1/'`
echo $dip
