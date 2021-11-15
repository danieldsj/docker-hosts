# Daniel's Docker Hosts

This repository contains docker-compose files that I use in my home lab. The follow is a summary for each docker-compose file.

## hosts
A lightweight stack to help with any spare machines I have laying around that can act as docker hosts.  Includes the following:
* A [ddclient container](https://docs.linuxserver.io/images/docker-ddclient) that updates my dynamic domain record at Google Domains.
* A [portainer container](https://www.portainer.io/products/community-edition) for basic UI.
* A [nginx container](https://www.docker.com/blog/how-to-use-the-official-nginx-docker-image/) configured as a [reverse proxy](https://docs.nginx.com/nginx/admin-guide/web-server/reverse-proxy/) to minimize open ports and centralize SSL management.

## TODO
* A development stack that includes Jenkins and/or Gitlab.
