#!/bin/sh

$JBOSS_HOME/bin/standalone.sh > /dev/null &

sleep 30
$JBOSS_HOME/bin/jboss-cli.sh -c --command="/subsystem=web/virtual-server=default-host:write-attribute(name=enable-welcome-root,value=false)"
$JBOSS_HOME/bin/jboss-cli.sh -c --command="shutdown"
