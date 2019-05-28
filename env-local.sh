ALL_HOSTS=all_hosts.txt

my_idx=`echo $ITERM_SESSION_ID | awk -F: '{print $1}' | sed -e 's/.*p//'`
my_host=`cat $ALL_HOSTS | head -n $(($my_idx+1)) | tail -1`

echo my_idx=$my_idx my_host=$my_host
