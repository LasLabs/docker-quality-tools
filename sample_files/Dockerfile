FROM golang:alpine
MAINTAINER LasLabs Inc <support@laslabs.com>

# Install build dependencies
# Make sure to use --no-cache.
RUN apk add --no-cache --virtual .build-deps \
    build-base \
    python-dev \
# Install application
    && apk add --no-cache python \
# Remove build dependencies
    && apk del .build-deps

# Copy and define entrypoint
COPY ./docker-entrypoint.sh /
ENTRYPOINT ["/docker-entrypoint.sh"]

# This typically exposes the service that the container is responsible for.
CMD ["python"]

# Metadata
ARG BUILD_DATE
ARG VCS_REF
ARG VERSION
LABEL org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.name="Example Project" \
      org.label-schema.description="Provides an example Dockerfile." \
      org.label-schema.url="https://laslabs.com/" \
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.vcs-url="https://github.com/LasLabs/docker-quality-tools" \
      org.label-schema.vendor="LasLabs Inc." \
      org.label-schema.version=$VERSION \
      org.label-schema.schema-version="1.0"
