#!/bin/bash

INDEX=$1

podman build -t fbc:${INDEX} .
podman tag fbc:${INDEX} quay.io/rhoai-konflux/fbc:${INDEX}
podman push quay.io/rhoai-konflux/fbc:${INDEX}