#!/bin/bash

set -x 

my_idx=$JIHOG_ME

if [ $my_idx -lt 4 ] ;then
  ./timeout3.sh -t 670 ./start-chrome.sh test_0
  sleep 3
  killall chrome
elif [ $my_idx -lt 8 ] ;then
  ./timeout3.sh -t 300 ./start-chrome.sh test_0
  sleep 3
  killall chrome
else 
  ./timeout3.sh -t 300 ./start-chrome.sh test_1
  sleep 3
  killall chrome
fi

if [ $my_idx -lt 8 ] ;then
  if [ $my_idx -gt 3 ] ;then
    ./timeout3.sh -t 180 ./start-chrome.sh test_2
    sleep 3
    killall chrome
  fi
elif [ $my_idx -lt 12 ] ;then
    ./timeout3.sh -t 180 ./start-chrome.sh test_3
    sleep 3
    killall chrome
else
    ./timeout3.sh -t 180 ./start-chrome.sh test_4
    sleep 3
    killall chrome
fi

if [ $my_idx -gt 3 ] ;then
    u=test2_$(($my_idx%6))
    ./timeout3.sh -t 180 ./start-chrome.sh $u
    sleep 3
    killall chrome
fi

u=test3_$(($my_idx%8))
./timeout3.sh -t 180 ./start-chrome.sh $u
sleep 3
killall chrome

u=test3_$(($my_idx%2))
./timeout3.sh -t 180 ./start-chrome.sh $u
sleep 3
killall chrome

