FROM ontotext/graphdb:10.6.1

ADD scripts /scripts

RUN chmod +x /scripts/load.sh

ENTRYPOINT [ "/scripts/load.sh" ]