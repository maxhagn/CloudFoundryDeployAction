FROM debian:12-slim

RUN apt-get update && apt-get -y install ca-certificates jq
RUN echo "deb [trusted=yes] https://packages.cloudfoundry.org/debian stable main" > /etc/apt/sources.list.d/cloudfoundry-cli.list
RUN apt-get update && apt-get -y install cf8-cli

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]