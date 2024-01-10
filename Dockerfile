FROM redocly/redoc:v2.1.3

COPY openapi.yaml /usr/share/nginx/html/

ENV SPEC_URL="./openapi.yaml"
ENV PAGE_TITLE="Life Event Verification"
#ENV REDOC_OPTIONS="hide-hostname=true"

