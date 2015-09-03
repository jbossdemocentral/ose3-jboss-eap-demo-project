#!/bin/sh

if [ "$#" -ne 1 ]; then
  echo "Usage oc-setup.sh [project-name]"
  exit 1
fi

oc new-project $1
oc create -f jboss-eap-imagestream.json
oc create -f simple-eap-temlpate.json
oc new-app --template=jboss-demo-example
oc start-build jbossdemo