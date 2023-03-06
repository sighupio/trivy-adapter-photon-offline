FROM registry.sighup.io/fury/goharbor/trivy-adapter-photon:v2.7.0

ENV SCANNER_TRIVY_SKIP_UPDATE="true"
ENV SCANNER_TRIVY_OFFLINE_SCAN="true"
ENV SCANNER_TRIVY_SECURITY_CHECKS="vuln"

RUN trivy image --download-db-only