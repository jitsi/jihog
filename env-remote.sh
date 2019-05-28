#!/bin/bash

#set -x
ALL_HOSTS=all_hosts.txt

my_ip=`ifconfig  | grep 'inet 10' | awk '{print $2}'`
my_idx=`cat $ALL_HOSTS | grep -n $my_ip | awk -F: '{print $1}'`
my_idx=$(($my_idx-1))


export JIHOG_ME=$my_idx

if [ $my_idx -lt 6 ] ;then
  export JIHOG_A=$(($my_idx % 3))
else
  export JIHOG_A=$my_idx
fi

if [ $my_idx -lt 15 ] ;then
  export JIHOG_B=$(($my_idx % 3))
else
  export JIHOG_B=$my_idx
fi

export JIHOG_C=$(($my_idx % 2))
