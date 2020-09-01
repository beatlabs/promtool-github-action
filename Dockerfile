FROM prom/prometheus:v2.20.1
LABEL maintainer="markos@chandras.me"

COPY promtool-github-action /usr/bin/promtool-github-action

ENTRYPOINT ["/usr/bin/promtool-github-action"]
