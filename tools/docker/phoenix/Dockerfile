FROM elixir:1.7-alpine

# version
ENV PHOENIX_VERSION="1.4.0"

# install phoenix
RUN mix local.hex --force \
  && mix local.rebar --force
RUN mix archive.install hex phx_new "${PHOENIX_VERSION}" --force

WORKDIR /var/www/phx

EXPOSE 4000

COPY ./tools/docker/phoenix/docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]
