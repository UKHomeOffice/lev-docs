FROM redocly/redoc:v2.1.3

COPY openapi.yaml assets/logo.png /usr/share/nginx/html/

ENV SPEC_URL="./openapi.yaml"
ENV PAGE_TITLE="Life Event Verification Service Documentation"
ENV PAGE_FAVICON="./logo.png"
