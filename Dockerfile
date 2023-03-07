FROM registry.sighup.io/fury/goharbor/trivy-adapter-photon:v2.7.0

RUN trivy image --download-db-only
