#!/bin/bash


echo "Attempting to run ${EXAMPLE=rainbow}"
python "blinkt/examples/${EXAMPLE}.py"

while : ; do
  echo "Waiting..."
  sleep 600
done
