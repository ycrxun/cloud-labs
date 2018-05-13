#!/usr/bin/env bash

function deploy() {
    docker stack deploy -c $1 $2
}

function traefik(){
    deploy traefik/traefik.yml traefik
}

function portainer() {
   deploy portainer/portainer.yml portainer
}

function main(){
    traefik
    portainer
}

fn=main
$fn