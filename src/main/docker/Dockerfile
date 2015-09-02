FROM jboss-eap-6/eap:6.4
MAINTAINER Thomas Qvarnstrom <tqvarnst@redhat.com>

ADD remove-welcome-root.sh ./
RUN sh remove-welcome-root.sh
ADD simpledemo.war /opt/eap/standalone/deployments/
