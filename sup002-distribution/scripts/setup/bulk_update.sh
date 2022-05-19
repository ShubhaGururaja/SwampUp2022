#!/bin/bash
i=2
number=9
while [ "$i" -le "$number" ]; do
   echo "$i"
   sh setup.sh "taletsup002epsu0$i@jfrog.com" "SwampUp2022!" "https://taletsup002epsu0$i.jfrog.io/artifactory"
   #sleep 3
   i=$(($i + 1))
done
