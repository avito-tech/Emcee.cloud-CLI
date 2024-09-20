FROM debian:12.6-slim

ENV EMCEE_CLI_VERSION=0.0.2
ENV EMCEE_CLI_ARCHITECTURE=x86_64

RUN apt-get update && apt-get -y install bash grep curl

RUN curl --location https://github.com/avito-tech/Emcee.cloud-CLI/releases/download/$EMCEE_CLI_VERSION/emcee-cloud_Linux_$EMCEE_CLI_ARCHITECTURE.tar.gz --output emcee-cloud_Linux_$EMCEE_CLI_ARCHITECTURE.tar.gz
RUN tar -xzf emcee-cloud_Linux_$EMCEE_CLI_ARCHITECTURE.tar.gz -C /usr/bin/
RUN chmod +x /usr/bin/emcee-cloud
RUN emcee-cloud --version

COPY entrypoint.sh /entrypoint.sh
RUN chmod 0755 /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
