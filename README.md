# corrade-docker

Corrade ( http://grimore.org/secondlife/scripted_agents/corrade ) is a scripted
agent/bot written in C# that can log in multiple avatars and respond to commands
with an extensive API to bridge in world and out-world systems.

This docker image hosted in the registry as  [iconmeta/corrade](https://registry.hub.docker.com/u/iconmeta/corrade/) allows you to
run Corrade in a docker container easily. There is no configuration file included in
the image, so you need to pass one in when you run the image:

```
    docker run -d -P -v /path/to/my/Corrade.ini:/usr/src/app/Corrade/Corrade.ini --name mybot1 iconmeta/corrade
```

To attach to your running container to view logs or something:

```
    docker exec -it bot /bin/sh
```

This image uses alpine linux to try to get the size down even though the mono
runtime is monstrous.

To use the image you don't need to build it, but if you want to build the image
yourself clone this repository and run:

```
    docker build -t YOUR_ORG/corrade .
```
Submit pull requests if you find issues or make enhancements.
