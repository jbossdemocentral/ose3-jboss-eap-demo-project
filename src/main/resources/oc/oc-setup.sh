#!/bin/sh

if [ "$#" -ne 1 ]; then
  echo "Usage oc-setup.sh [project-name]"
  exit 1
fi

oc new-project $1 --display-name="JBoss EAP Demo Project" --description="This is a simple JBoss EAP demo project"
oc create -f scripts/jboss-eap-imagestream.json
oc create -f scripts/simple-eap-temlpate.json
oc new-app --template=jboss-demo-example
oc start-build jbossdemo
