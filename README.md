# Trivy Offline

[![Build Status](https://ci.sighup.io/api/badges/sighupio/trivy-adapter-photon-offline/status.svg)](https://ci.sighup.io/sighupio/trivy-adapter-photon-offline)

This project aims to solve an issue while using Trivy Adapter Photon at scale.
In an environment where you need to scan hundreds or even thousands of container images with Trivy, you can hit a
GitHub limit while downloading the vulnerability database.

## Inspiration

This project was inspired by the [`arminc/clair-db`](https://hub.docker.com/r/arminc/clair-db) container image,
and [github.com/arminc/clair-local-scan](https://github.com/arminc/clair-local-scan) project witch speeds up
[clair](https://github.com/quay/clair) vulnerability scans.

## What we do

We build and publish a new container image every day following
[trivy documentation to download and use the vulnerability database just once](https://github.com/aquasecurity/trivy/blob/main/docs/docs/advanced/air-gap.md).
The process was designed to be used in the air-gapped environment. Still, it fits perfectly while running this software on CI
systems like `drone`, `gitlab`, `github-actions`, `circle-ci`, or `travis`.

We publish one tag every day:

- *[quay.io/sighup/trivy-adapter-photon-offline]*:`v2.7.0`: It is overridden every day. If you choose this tag, be sure to pull the image before running your scan.