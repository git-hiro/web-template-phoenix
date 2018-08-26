FROM elixir:1.7-alpine

# install phoenix
RUN mix archive.install --force https://github.com/phoenixframework/archives/raw/master/phx_new.ez
RUN mix local.hex --force \
  && mix local.rebar --force

WORKDIR /var/www

EXPOSE 4000

COPY entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]
