FROM gliderlabs/alpine:edge
MAINTAINER ICON Metaverse <icon@iconmeta.com>


RUN apk add mono --update-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ --allow-untrusted


LABEL version=9.60.0 Description="For running Second Life and OpenSim automated agents based on the Corrade scripted agent system" Vendor="ICON Metaverse"

ADD [ "http://grimore.org/_media/secondlife/scripted_agents/corrade-9.60.zip", "/tmp/corrade.zip" ]
ADD [ "./run.sh", "/usr/src/app/Corrade/run.sh" ]

RUN mkdir -p /usr/src/app
RUN unzip -d /usr/src/app /tmp/corrade.zip && rm -f /usr/src/app/Corrade/Corrade.ini

WORKDIR /usr/src/app/Corrade

EXPOSE 8090
#ENTRYPOINT [ "mono-service", "-l:Corrade.exe.lock", "--no-daemon", "./Corrade.exe" ]
ENTRYPOINT [ "./run.sh" ]
