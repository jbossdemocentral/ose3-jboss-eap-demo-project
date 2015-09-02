#!/bin/sh

if [ "$#" -ne 1 ]; then
  echo "Usage new-project.sh [project-name]"
  exit 1
fi

oc new-project $1
oc create -f jboss-eap-imagestream.json
