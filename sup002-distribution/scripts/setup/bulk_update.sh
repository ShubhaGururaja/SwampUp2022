#!/bin/bash
i=1
number=9
while [ "$i" -le "$number" ]; do
   echo "$i"
   sh setup.sh "taletsup002epsu0$i@jfrog.com" "SwampUp2022!" "https://sup002epsu0$i.jfrog.io/artifactory"
   #sleep 3
   i=$(($i + 1))
done
i=10
number=30
while [ "$i" -le "$number" ]; do
   echo "$i"
   sh setup.sh "taletsup002epsu$i@jfrog.com" "SwampUp2022!" "https://sup002epsu$i.jfrog.io/artifactory"
   #sleep 3
   i=$(($i + 1))
done
