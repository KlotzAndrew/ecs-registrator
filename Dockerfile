FROM gliderlabs/registrator:v7

LABEL maintainer "Andrew Klotz <agc.klotz@gmail.com>"

ADD registrator_on_ecs.sh /usr/local/bin/registrator_on_ecs.sh
RUN apk-install curl

ENTRYPOINT ["registrator_on_ecs.sh"]
