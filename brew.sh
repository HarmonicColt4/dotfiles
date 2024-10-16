#! /bin/bash

apps=(
    hashicorp/tap/terraform
    fluxcd/tap/flux
    kubectl
    helm
)

brew install "${apps[@]}"
