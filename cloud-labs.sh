#!/usr/bin/env bash

function deploy() {
  docker stack deploy -c "$1" "$2"
}

function func() {
  local dir="$1"
  local version="$2"
  local yaml="$dir/$1"
  local stack="$1"
  if [ -n "$version" ]; then
    yaml="$dir/$1-$2"
  fi
  if [ -f "$yaml.yml" ]; then
    yaml="$yaml.yml"
  else
    yaml="$yaml.yaml"
  fi
  if [ -f "$yaml" ]; then
    deploy "$yaml" "$stack"
  else
    echo "stack [$1] compose file [$yaml] not found."
    exit 1
  fi
}

fn=func
$fn "${@:1}"
