FROM ubuntu
MAINTAINER srybin
RUN apt-get update && apt-get install -y \
	systemd \
	dbus \
	dbus-x11

RUN mkdir /usr/local/share/dbus-1
RUN mkdir /usr/local/share/dbus-1/services
RUN mkdir /var/run/dbus/
COPY session.conf /usr/local/share/dbus-1
COPY system.conf /usr/local/share/dbus-1

COPY start.sh /usr/local/bin
RUN chmod +x /usr/local/bin/start.sh
ENTRYPOINT ["/bin/bash", "/usr/local/bin/start.sh"]