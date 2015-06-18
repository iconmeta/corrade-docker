# corrade-docker

Corrade ( http://grimore.org/secondlife/scripted_agents/corrade ) is a scripted agent/bot written in C# that can log in multiple avatars and respond to commands with an extensive API to bridge in world and out-world systems.

To build the image, run:

docker build -t YOUR_ORG/corrade .

This docker image allows you to host Corrade by passing in a configuration file when you run the image:

docker run -d -P -v /path/to/my/Corrade.ini:/usr/src/app/Corrade/Corrade.ini --name mybot1 iconmeta/corrade

To attach to your running container to view logs or something:

docker exec -it bot /bin/sh

This image uses alpine linux to try to get the size down even though the mono runtime is monstrous.
